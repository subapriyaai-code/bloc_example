// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloc_example/domain/repositories/user_repo.dart' as _i34;
import 'package:bloc_example/domain/use_cases/get_user_use_case.dart' as _i96;
import 'package:bloc_example/presentation/dasbhoard/dashboard_bloc.dart'
    as _i28;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i96.GetUserUseCase>(
      () => _i96.GetUserUseCase(gh<_i34.UserRepo>()),
    );
    gh.factory<_i28.DashboardBloc>(
      () => _i28.DashboardBloc(gh<_i96.GetUserUseCase>()),
    );
    return this;
  }
}
