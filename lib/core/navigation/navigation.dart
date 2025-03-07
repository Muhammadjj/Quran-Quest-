import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/data_source/ayah_remote_data_source.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/data/repo/ayah_repository_impl.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/domain/usecases/get_random_ayah.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/bloc/random_ayah_bloc.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/view/quran_dashboard.dart';
import 'package:quran_quest/feature/Quran_Quest_DashBoard/presentation/widgets/Landing_Page_Widgets/landing_page.dart';

part 'route_name.dart';
part 'navigation_helper.dart';
part 'routing_method.dart';
