part of 'utils.dart';

class AppDecoration {
  // ! Container.
  static BoxDecoration container(
    BuildContext context, {
    bool isBordered = false,
  }) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).focusColor,
      border:
          isBordered ? Border.all(color: Theme.of(context).cardColor) : null,
    );
  }
}
