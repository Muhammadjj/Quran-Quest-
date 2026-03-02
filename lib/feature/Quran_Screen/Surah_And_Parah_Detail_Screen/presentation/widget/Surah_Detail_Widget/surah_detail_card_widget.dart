part of '../widget.dart';

class SurahDetailCardWidget extends StatelessWidget {
  const SurahDetailCardWidget({
    required this.height,
    required this.width,
    required this.number,
    required this.textOfArabic,
    required this.ruku,
    required this.manzil,
    required this.juz,
    required this.numberOfSurah,
    required this.currentSurahNumber,
    this.isPlaying,
    this.playerAudioPress,
    super.key,
  });

  final String number;
  final String textOfArabic;
  final String ruku;
  final String manzil;
  final String juz;
  final double height;
  final double width;
  final String numberOfSurah;
  final String currentSurahNumber;
  final void Function()? playerAudioPress;
  final bool? isPlaying;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).brightness == Brightness.dark
        ? AppColors.kWhite
        : AppColors.kWhite;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.kDimGray
          : AppColors.kWhite,
      elevation: 4,
      child: <Widget>[
        IconButton(
          iconSize: 20.sp,
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.kWhite
              : AppColors.kBlack,
          splashColor: AppColors.kTransparent,
          onPressed: () async {
            await showDialog<void>(
              context: context,
              builder: (context) => MoreOptionOpenDialog(),
            );
          },
          icon: Icon(
            Icons.more_vert,
            size: 20.sp,
          ).paddingAll(8.sp),
        ),

        // ! PopUp Menu Button
        <Widget>[
          PopoverMenuWidget(
            text: 'Detail',
            menuItems: [
              PopupMenuItem<String>(
                child: Text(
                  'Number : $number',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: textTheme,
                        fontSize: 15,
                        fontFamily: FontFamilyName.amiriQuran,
                      ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Ruku : $ruku',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Juz : $juz',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
              PopupMenuItem<String>(
                child: Text(
                  'Manzil : $manzil',
                  style: TextStyle(
                    color: textTheme,
                    fontSize: 15,
                    fontFamily: FontFamilyName.amiriQuran,
                  ),
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '{',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 22.sp, // Bigger size for curly brace
                        fontFamily: FontFamilyName.amiriQuran,
                      ),
                ),
                TextSpan(
                  text: '$numberOfSurah:$currentSurahNumber',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 14.sp, // Smaller size for number
                        fontFamily: FontFamilyName.amiriQuran,
                      ),
                ),
                TextSpan(
                  text: '}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 22.sp, // Bigger size for curly brace
                        fontFamily: FontFamilyName.amiriQuran,
                      ),
                ),
              ],
            ),
          ),
        ].addRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),

        SizedBox(height: 8.h),
        //! Arabic Text (Right Aligned)
        Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText(
            textOfArabic,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 25.sp,
                  fontFamily: FontFamilyName.meQuran,
                  // color: AppColors.kWhite,
                  height: 2,
                ),
            minFontSize: 16,
            textAlign: TextAlign.end,
          ),
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () {
            if (playerAudioPress != null) {
              playerAudioPress!(); // Trigger the audio play/pause function
            }
          },
          child: Icon(
            isPlaying! ? Icons.pause : Icons.play_arrow, // Toggle icon
            color: AppColors.kGreen,
            size: 30.sp,
          ),
        ),
      ]
          .addColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
          )
          .paddingAll(16.sp),
    ).paddingHorizontal(12.w).paddingVertical(8.h);
  }
}
