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
      color: AppColors.deepGreen,
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              Icons.menu_book_rounded,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(width: 12),
            AutoSizeText(
              'Quran Majid Type 🕌',
              style: TextStyle(
                color: Colors.white,
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
      color: AppColors.kCharcoalGray,
      child: TabBar(
        controller: tabController,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white60,
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
