// ignore_for_file: inference_failure_on_function_return_type

part of '../widget.dart';

class CustomMasonryGridView extends StatelessWidget {
  const CustomMasonryGridView({
    required this.isButtonPressed,
    required this.onTap,
    super.key,
  });
  final bool isButtonPressed;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 5,
        bottom: 130,
      ),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 5,
      physics:
          const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemBuilder: (context, index) {
        final heightOfContainer = _getContainerHeight(index);
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 0),
          height: heightOfContainer,
          width: context.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kDimGray,
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.2),
                spreadRadius: 0.5,
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: isButtonPressed ? null : () => onTap(index),
            child: GridItemUiDesign(index: index),
          ),
        );
      },
    ).paddingRight(5).paddingLeft(0);
  }

  double _getContainerHeight(int index) {
    switch (index % 5) {
      case 0:
      case 3:
        return 150.0;
      case 1:
      case 2:
      case 4:
        return 250.0;
      default:
        return 150.0;
    }
  }
}

class GridItemUiDesign extends StatelessWidget {
  const GridItemUiDesign({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return _buildGridItem(
          icon: Icons.book,
          title: 'Quran',
          color: Colors.green.shade700,
        );
      case 1:
        return _buildGridItem(
          icon: Icons.menu_book,
          title: 'Hadith',
          color: Colors.brown.shade700,
        );
      case 2:
        return _buildGridItem(
          icon: Icons.mosque,
          title: 'Prayer Times',
          color: Colors.blue.shade700,
        );
      case 3:
        return _buildGridItem(
          icon: Icons.bookmark,
          title: 'Bookmarks',
          color: Colors.orange.shade700,
        );
      case 4:
        return _buildGridItem(
          icon: Icons.settings,
          title: 'Settings',
          color: Colors.grey.shade700,
        );
      default:
        return _buildGridItem(
          icon: Icons.error,
          title: 'Unknown',
          color: Colors.red.shade700,
        );
    }
  }

  Widget _buildGridItem({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.white),
        const SizedBox(height: 8),
        AutoSizeText(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
