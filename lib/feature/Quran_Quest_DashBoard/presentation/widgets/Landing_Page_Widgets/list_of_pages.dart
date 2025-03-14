part of '../widgets.dart';

final dashBoardScreens = [
  // 1
  const QuranMainScreen(),
  // 2
  BlocProvider<RandomAyahBloc>(
    // create: (context) => RandomAyahBloc(
    //   getRandomAyah: DependenceManager.sl(),
    // ),

    create: (context) => DependenceManager.sl<RandomAyahBloc>(),
    child: const DashBoardScreen(),
  ),
  // 3
  Container(
    color: AppColors.emeraldGreen,
    height: 850,
    width: double.infinity,
  ),
  // 4
  // Container(
  //   color: AppColors.kBlue,
  //   height: 850,
  //   width: double.infinity,
  // ),
];
