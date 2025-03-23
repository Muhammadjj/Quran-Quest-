part of '../widget.dart';

/// 🕌 Quran Majid Type Card
class QuranMajidTypeCard extends StatelessWidget {
  const QuranMajidTypeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.deepGreen
          : AppColors.kWhite,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(
              Icons.menu_book_rounded,
              // color: Colors.white,
              size: 40,
            ),
            const SizedBox(width: 12),
            AutoSizeText(
              'Quran Majid Type 🕌',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    ).paddingAll(16.sp);
  }
}

/// 📌 Tabs
class QuranTabs extends StatelessWidget {
  final TabController tabController;
  const QuranTabs({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: TabBar(
        controller: tabController,
        labelColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.kWhite
            : AppColors.kBlack,
        unselectedLabelColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.kBlack
            : const Color.fromARGB(153, 130, 130, 130),
        indicatorColor: AppColors.deepGreen,
        tabs: const [
          Tab(text: 'BY SURAH'),
          Tab(text: 'BY PARAH'),
          Tab(text: 'FAVORITE'),
        ],
      ),
    );
  }
}
