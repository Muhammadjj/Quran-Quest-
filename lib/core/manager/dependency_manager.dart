part of 'managers.dart';

final getIt = GetIt.instance;

class DependenceManager {
  //  ! Initialize the Dependence Manager
  static Future<void> init() async {
    await _dashBoardRandomAyah();
  }

  //  ! DashBoard Random Ayah Register
  static Future<void> _dashBoardRandomAyah() async {
    getIt
      ..registerLazySingleton<AyahRemoteDataSource>(
        AyahRemoteDataSourceImpl.new,
      )
      ..registerLazySingleton<AyahRepository>(
        () => AyahRepositoryImpl(remoteDataSource: getIt()),
      )
      ..registerLazySingleton(() => GetRandomAyah(repository: getIt()));
  }

//! fetch all GetIt functions.
  static T get<T extends Object>() {
    return getIt.get<T>();
  }

  //! *********************************************************
  //! ****************** DashBoard Random Ayah ****************
  //  ! DashBoard Random Ayah UnRegister
  static void _dashBoardRandomAyahUnRegister() {
    getIt
      ..unregister<AyahRemoteDataSource>()
      ..unregister<AyahRepository>()
      ..unregister<GetRandomAyah>();
  }

  //  ! Dispose the Dependence Manager
  static void dispose() {
    _dashBoardRandomAyahUnRegister();
  }

  //  ! Reset the Dependence Manager
  static void reset() {
    _dashBoardRandomAyahUnRegister();
    _dashBoardRandomAyah();
  }
}
