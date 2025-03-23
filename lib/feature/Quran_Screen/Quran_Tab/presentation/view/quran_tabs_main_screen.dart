import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_quest/core/manager/managers.dart';
import 'package:quran_quest/export/export.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/bloc/quran_all_tabs_data_bloc.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/view/by_parah_screen.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/view/by_surah_screen.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/view/quran_favorite_screen.dart';
import 'package:quran_quest/feature/Quran_Screen/Quran_Tab/presentation/widgets/widget.dart';

class QuranTabsScreen extends StatefulWidget {
  const QuranTabsScreen({super.key});

  @override
  State<QuranTabsScreen> createState() => _QuranTabsScreenState();
}

class _QuranTabsScreenState extends State<QuranTabsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: GradientAppBar(
        title: 'Quran',
        context: context,
      ),
      body: <Widget>[
        const QuranMajidTypeCard(),
        QuranTabs(tabController: _tabController),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              BlocProvider(
                create: (context) =>
                    DependenceManager.sl<QuranAllTabsDataBloc>(),
                child: const BySurahScreen(),
              ),
              const ByParahScreen(),
              const FavoriteScreen(),
            ],
          ),
        ),
      ].addColumn(),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
