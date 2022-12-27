import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/core/core.config.dart';
import 'package:pokedex/core/core.gr.dart';
import 'package:pokedex/presentation/presentation.dart';

export 'app_dio.dart';
export 'package:pokedex/core/core.gr.dart';

part 'app_routes.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void initInjector({String? env}) => $initGetIt(getIt, environment: env);
