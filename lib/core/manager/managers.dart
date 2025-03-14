import 'package:get_it/get_it.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/data_source/ayah_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/repo/ayah_repository_impl.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/repo/random_repo.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/usecases/get_random_ayah.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/bloc/random_ayah_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/data_source/surah_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/data/repo/quran_surah_repository_impl.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/repo/quran_surah_repo.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/domain/usecases/quran_surah_usecases.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/bloc/quran_all_tabs_data_bloc.dart';

part 'dependency_manager.dart';
