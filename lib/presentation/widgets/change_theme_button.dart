import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/presentation.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) => IconButton(
        tooltip: 'Change theme',
        onPressed: BlocProvider.of<ThemeCubit>(context).update,
        icon: Icon(state.iconData),
      ),
    );
  }
}
