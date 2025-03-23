part of 'managers.dart';

class DependenceManager {
  static final sl = GetIt.instance;
  //  ! Initialize the Dependence Manager
  static Future<void> init() async {
    await _dashBoardRandomAyahRegisterServices();
    await _quranAllTabsRegisterServices();
    await _quranSurahDetailRegisterServices();
    await _parahDetailRegisterServices();
  }

  //  ! DashBoard Random Ayah Register.
  static Future<void> _dashBoardRandomAyahRegisterServices() async {
    sl
      ..registerFactory(() => RandomAyahBloc(getRandomAyah: sl()))
      ..registerLazySingleton<AyahRemoteDataSource>(
        AyahRemoteDataSourceImpl.new,
      )
      ..registerLazySingleton<AyahRepository>(
        () => AyahRepositoryImpl(remoteDataSource: sl()),
      )
      ..registerLazySingleton(() => GetRandomAyah(repository: sl()));
  }

  // ! Quran All Tabs Register Classes.
  static Future<void> _quranAllTabsRegisterServices() async {
    sl
      ..registerLazySingleton<SurahRemoteDataSourceImpl>(
        SurahRemoteDataSourceImpl.new,
      )
      ..registerFactory(() => QuranAllTabsDataBloc(getSurahUseCasesData: sl()))
      ..registerLazySingleton<QuranSurahRepo>(
        () => SurahRepositoryImpl(remoteDataSourceImpl: sl()),
      )
      ..registerLazySingleton(() => GetQuranSurahListUseCase(surahRepo: sl()));
  }

  // ! Quran Surah Detail Register Classes
  static Future<void> _quranSurahDetailRegisterServices() async {
    sl
      // 1. Register Remote Data Source (lowest layer)
      ..registerLazySingleton<QuranSurahDetailRemoteDataSource>(
        QuranSurahDetailImpl.new,
      )
      // 2. Register Repository
      ..registerLazySingleton<QuranSurahDetailRepo>(
        () => QuranSurahDetailRepositoryImpl(quranSurahDetailImpl: sl()),
      )
      // 3. Register UseCase
      ..registerLazySingleton(
        () => QuranSurahDetailUsecases(quranSurahDetailRepo: sl()),
      )
      // 4. Register Bloc (highest layer)
      ..registerFactory(
        () => QuranSurahDetailBloc(quranSurahDetailUsecases: sl()),
      );
  }

  static Future<void> _parahDetailRegisterServices() async {
    sl
      ..registerLazySingleton<QuranParahDetailRemoteDataSource>(
        ParahRemoteDataSourceImpl.new,
      )
      ..registerLazySingleton<ParahDetailRepo>(
        () => ParahDetailRepositoryImpl(quranParahDetailRemoteDataSource: sl()),
      )
      ..registerLazySingleton(() => ParahDetailUsecase(parahDetailRepo: sl()))
      ..registerFactory(() => ParahDetailBloc(parahDetailUsecase: sl()));
  }

  //! fetch all GetIt functions.
  static T get<T extends Object>() {
    return sl.get<T>();
  }

  //! *********************************************************
  //! ****************** DashBoard Random Ayah ****************
  //  ! DashBoard Random Ayah UnRegister
  // static void _dashBoardRandomAyahUnRegister() {
  //   getIt
  //     ..unregister<AyahRemoteDataSource>()
  //     ..unregister<AyahRepository>()
  //     ..unregister<GetRandomAyah>();
  // }

  // //  ! Quran All Tabs UnRegister
  // static void _quranAllTabsUnRegister() {
  //   getIt
  //     ..unregister<SurahRemoteDataSource>()
  //     ..unregister<QuranSurahRepo>()
  //     ..unregister<GetQuranSurahList>();
  // }

  // //  ! Dispose the Dependence Manager
  // static void dispose() {
  //   _dashBoardRandomAyahUnRegister();
  //   _quranAllTabsUnRegister();
  // }

  // //  ! Reset the Dependence Manager
  // static void reset() {
  //   _dashBoardRandomAyahUnRegister();
  //   _dashBoardRandomAyahRegisterServices();
  //   _quranAllTabsUnRegister();
  //   _quranAllTabsRegisterServices();
  // }
}
