import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SearchPokemonCubit()),
      ],
      child: Builder(
        builder: (context) => Scaffold(
          resizeToAvoidBottomInset: false,
          body: Scrollbar(
            controller: _scrollController,
            radius: const Radius.circular(16),
            child: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              controller: _scrollController,
              slivers: [
                BlocConsumer<SettingsCubit, SettingsState>(
                  buildWhen: (previous, current) =>
                      previous.showSearch != current.showSearch,
                  listenWhen: (previous, current) =>
                      previous.showSearch != current.showSearch,
                  listener: (context, state) {
                    BlocProvider.of<SearchPokemonCubit>(
                      context,
                    ).search('');

                    _searchController.clear();
                  },
                  builder: (context, state) {
                    return SliverAppBar(
                      floating: true,
                      title: const Text('Pokedex'),
                      actions: [
                        IconButton(
                          tooltip: 'Settings',
                          // onPressed: () => router.push(const SettingsRoute()),
                          onPressed: () => context.showBottomSheet(
                            builder: (context) => const SettingsDialogue(),
                          ),
                          icon: const Icon(Icons.settings),
                        ),
                      ],
                      bottom: state.showSearch
                          ? PreferredSize(
                              preferredSize:
                                  const Size.fromHeight(kToolbarHeight + 16),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextField(
                                  controller: _searchController,
                                  textCapitalization: TextCapitalization.words,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search Pokemon',
                                  ),
                                  onChanged:
                                      BlocProvider.of<SearchPokemonCubit>(
                                    context,
                                  ).search,
                                ),
                              ),
                            )
                          : null,
                    );
                  },
                ),
                BlocBuilder<PokemonListBloc, PokemonListState>(
                  buildWhen: (previous, current) => current.maybeMap(
                    orElse: () => false,
                    loaded: (value) => true,
                  ),
                  builder: (context, state) => state.maybeMap(
                    orElse: () => const SliverToBoxAdapter(),
                    loaded: (value) =>
                        BlocBuilder<SettingsCubit, SettingsState>(
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
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: settingsState.gridCount,
                            ),
                            delegate: SliverChildListDelegate(
                              pokemons
                                  .map((e) => PokemonCard(pokemon: e))
                                  .toList(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
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
      ),
    );
  }
}
