part of '../widgets.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    required this.itemIndex,
    required this.notifier,
    required this.assets,
    super.key,
  });

  final int itemIndex;
  final ValueNotifier<int> notifier;
  final String assets;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          notifier.value = itemIndex;
        },
        child: ValueListenableBuilder(
          valueListenable: notifier,
          builder: (BuildContext context, _, __) {
            return Stack(
              children: [
                Positioned(
                  top: 13.h,
                  child: <Widget>[
                    SvgPicture.asset(
                      assets,
                      width: 30.w,
                      height: 30.h,
                      // color: notifier.value != itemIndex
                      //     ? AppColors.kGrey
                      //     : AppColors.primary,
                    ).withQuranShadeMaskGradient(),
                    const SizedBox(height: 25),
                    if (notifier.value != itemIndex)
                      const SizedBox(width: 30, height: 30)
                    else
                      Transform.rotate(
                        angle: -math.pi / 4,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          width: 30.w,
                          height: 30.h,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.softGold, //! Soft Gold
                                AppColors.deepGreen, //! Deep Green
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                  ].addColumn(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
