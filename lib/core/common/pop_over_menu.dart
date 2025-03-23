part of 'common.dart';

class PopoverMenuWidget<T> extends StatelessWidget {
  PopoverMenuWidget({
    required this.text,
    required this.menuItems,
    this.initialValue,
    double? elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.semanticLabel,
    this.shape,
    this.menuPadding,
    Color? color,
    this.useRootNavigator = false,
    this.constraints,
    this.clipBehavior = Clip.none,
    this.routeSettings,
    this.popUpAnimationStyle,
    this.requestFocus,
    super.key,
  })  : color = color ?? AppColors.kCharcoalGray,
        elevation = elevation ?? 16.0;

  final String text;
  final List<PopupMenuEntry<T>> menuItems;
  final T? initialValue;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final String? semanticLabel;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? menuPadding;
  final Color? color;
  final bool useRootNavigator;
  final BoxConstraints? constraints;
  final Clip clipBehavior;
  final RouteSettings? routeSettings;
  final AnimationStyle? popUpAnimationStyle;
  final bool? requestFocus;

  final GlobalKey _key = GlobalKey(); // 🔑 Key to track widget position

  void _showPopupMenu(BuildContext context) {
    final renderBox = _key.currentContext!.findRenderObject()! as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    showMenu<T>(
      context: context,
      position: RelativeRect.fromLTRB(
        0,
        offset.dy + renderBox.size.height,
        offset.dx + renderBox.size.width * 0.05,
        offset.dx + renderBox.size.width,
      ),
      items: menuItems,
      initialValue: initialValue,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      semanticLabel: semanticLabel,
      shape: shape,
      color: color,
      constraints: constraints,
      clipBehavior: clipBehavior,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.nightText
        : AppColors.dayText;
    return GestureDetector(
      key: _key, // 🔹 Widget ki position track karega
      onTap: () => _showPopupMenu(context),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            AutoSizeText(
              text,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamilyName.amiriQuran,
                    color: textColor, // 🎨 Text color
                  ),

              textAlign: TextAlign.end, // 🔚 Text alignment
            ),
            SizedBox(
              height: context.height * 0.04,
              width: context.width * 0.1,
              child: Icons.arrow_drop_down.toCustomIcon(
                color: textColor,
                size: 40.sp,
              ),
            ).paddingTop(10),
          ],
        ),
      ),
    );
  }
}
