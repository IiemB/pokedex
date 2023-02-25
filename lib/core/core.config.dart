// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokedex/common/cache_manager.dart' as _i4;
import 'package:pokedex/core/core.dart' as _i3;
import 'package:pokedex/data/data.dart' as _i5;
import 'package:pokedex/data/datasources/pokedex_remote_datasources_impl.dart'
    as _i6;
import 'package:pokedex/data/repositories/pokedex_repository_impl.dart' as _i8;
import 'package:pokedex/domain/domain.dart' as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AppRoutes>(() => _i3.AppRoutes());
  gh.lazySingleton<_i4.CacheManager>(() => _i4.CacheManager());
  gh.lazySingleton<_i5.PokedexRemoteDatasources>(
      () => _i6.PokedexRemoteDatasourcesImpl());
  gh.lazySingleton<_i7.PokedexRepository>(
      () => _i8.PokedexRepositoyImpl(gh<_i5.PokedexRemoteDatasources>()));
  return getIt;
}
