import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokedex/common/pokedex_bloc_observer.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initInjector();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  Bloc.observer = PokedexBlocObserver(
    onCreateLog: true,
    // onEventLog: true,
    // onChangeLog: true,
    onTransitionLog: true,
    // onErrorLog: true,
    onCloseLog: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 846),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsCubit()),
        ],
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) => MaterialApp.router(
            title: 'Pokedex',
            themeMode: state.themeState.themeMode,
            theme: state.themeState.themeData,
            routerDelegate: AutoRouterDelegate(
              router,
              navigatorObservers: () => [],
            ),
            routeInformationProvider: router.routeInfoProvider(),
            routeInformationParser: router.defaultRouteParser(),
          ),
        ),
      ),
    );
  }
}
