part of 'common.dart';

class QuranSwitchButton extends StatefulWidget {
  const QuranSwitchButton({
    required this.value,
    required this.onChanged,
    this.width = 50.0,
    this.height = 28.0,
    this.activeColor,
    this.inactiveColor,
    super.key,
  });
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final Color? activeColor;
  final Color? inactiveColor;

  @override
  _QuranSwitchButtonState createState() => _QuranSwitchButtonState();
}

class _QuranSwitchButtonState extends State<QuranSwitchButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      value: widget.value ? 1.0 : 0.0,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void didUpdateWidget(QuranSwitchButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeColor = widget.activeColor ?? theme.primaryColor;
    final inactiveColor = widget.inactiveColor ?? Colors.grey.shade400;

    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.height / 2),
              color: Color.lerp(inactiveColor, activeColor, _animation.value),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: AnimatedOpacity(
                    opacity: widget.value ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child:
                        const Icon(Icons.check, color: Colors.white, size: 16),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedOpacity(
                    opacity: widget.value ? 0.0 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child:
                        const Icon(Icons.close, color: Colors.white, size: 16),
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                      _animation.value * (widget.width - widget.height), 0),
                  child: Container(
                    width: widget.height - 6,
                    height: widget.height - 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
