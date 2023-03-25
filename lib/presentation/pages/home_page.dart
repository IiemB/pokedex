import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();

    _scrollController
      ..removeListener(() {})
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Scrollbar(
          controller: _scrollController,
          radius: const Radius.circular(16),
          child: CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            controller: _scrollController,
            slivers: [
              // Handle slow animated padding on notched IPhone
              if (Platform.isIOS) ...[
                SliverAppBar(
                  backgroundColor: context.theme.primaryColor,
                  titleTextStyle: context.theme.appBarTheme.titleTextStyle
                      ?.copyWith(color: context.theme.colorScheme.onPrimary),
                  floating: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(12),
                    ),
                  ),
                  title: const Text('Pokedex'),
                  centerTitle: false,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(kToolbarHeight),
                    child: _SearchPokemonField(
                      searchController: _searchController,
                      scrollController: _scrollController,
                    ),
                  ),
                ),
                _PokemonList(searchController: _searchController)
              ] else
                SliverStickyHeader.builder(
                  builder: (context, state) {
                    return AnimatedPadding(
                      duration: const Duration(milliseconds: 100),
                      padding: EdgeInsets.only(
                        top: state.isPinned
                            ? MediaQuery.of(context).padding.top
                            : 0,
                      ),
                      child: _SearchPokemonField(
                        searchController: _searchController,
                        scrollController: _scrollController,
                      ),
                    );
                  },
                  sliver: _PokemonList(searchController: _searchController),
                ),
              BlocBuilder<PokemonListBloc, PokemonListState>(
                buildWhen: (previous, current) => current.maybeMap(
                  orElse: () => false,
                  loaded: (value) => value.nextUrl == null,
                  loading: (value) => true,
                ),
                builder: (context, state) => state.maybeMap(
                  orElse: () => const SliverToBoxAdapter(),
                  loading: (value) => const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Loading data...',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PokemonList extends StatelessWidget {
  const _PokemonList({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListBloc, PokemonListState>(
      buildWhen: (previous, current) => current.maybeMap(
        orElse: () => false,
        loaded: (value) => true,
      ),
      builder: (context, state) => state.maybeMap(
        orElse: () => const SliverToBoxAdapter(),
        loaded: (value) => BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              previous.gridCount != current.gridCount,
          builder: (context, settingsState) =>
              BlocBuilder<SearchPokemonCubit, List<Pokemon>>(
            bloc: BlocProvider.of<SearchPokemonCubit>(context)
              ..initPokemon(value.pokemons)
              ..search(_searchController.text),
            builder: (context, pokemons) {
              if (pokemons.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.images.icon.image(
                          height: context.width / 2,
                        ),
                        const Gap(8),
                        const Text('No Pokemon Found')
                      ],
                    ),
                  ),
                );
              }

              return SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: settingsState.gridCount,
                ),
                delegate: SliverChildListDelegate(
                  pokemons.map((e) => PokemonCard(pokemon: e)).toList(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _SearchPokemonField extends StatelessWidget {
  const _SearchPokemonField({
    Key? key,
    required TextEditingController searchController,
    required ScrollController scrollController,
  })  : _searchController = searchController,
        _scrollController = scrollController,
        super(key: key);

  final TextEditingController _searchController;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Theme(
        data: context.theme.copyWith(
          inputDecorationTheme: context.theme.inputDecorationTheme.copyWith(
            filled: true,
            fillColor: context.theme.primaryColor,
            prefixIconColor: context.theme.colorScheme.onPrimary,
            hintStyle: TextStyle(
              color: context.theme.colorScheme.onPrimary,
            ),
          ),
        ),
        child: TextField(
          controller: _searchController,
          textCapitalization: TextCapitalization.words,
          style: TextStyle(
            color: context.theme.colorScheme.onPrimary,
          ),
          cursorColor: context.theme.colorScheme.onPrimary,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search Pokemon',
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: BlocBuilder<SearchPokemonCubit, List<Pokemon>>(
                    builder: (context, state) => Text(
                      state.length.toString(),
                      style: TextStyle(
                        color: context.theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  tooltip: 'Settings',
                  onPressed: () => context.showBottomSheet(
                    builder: (context) => const SettingsDialogue(),
                  ),
                  color: context.theme.colorScheme.onPrimary,
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          ),
          onTap: () => _scrollController.jumpTo(0),
          onChanged: BlocProvider.of<SearchPokemonCubit>(
            context,
          ).search,
        ),
      ),
    );
  }
}
