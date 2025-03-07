import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/bloc/random_ayah_bloc.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/view/quran_dashboard.dart';

final dashBoardScreens = [
  BlocProvider<RandomAyahBloc>(
    create: (context) => RandomAyahBloc(
      getRandomAyah: getIt(),
    ),
    child: const DashBoardScreen(),
  ),
  Container(
    color: AppColors.darkGold,
    height: 850,
    width: double.infinity,
  ),
  Container(
    color: AppColors.emeraldGreen,
    height: 850,
    width: double.infinity,
  ),
  Container(
    color: AppColors.kBlue,
    height: 850,
    width: double.infinity,
  ),
];
