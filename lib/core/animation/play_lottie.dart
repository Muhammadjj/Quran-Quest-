part of 'animation.dart';

class PlayLottie extends StatefulWidget {
  const PlayLottie({
    required this.lottie,
    this.isPlayBackAndForward = false,
    this.repeat = false,
    super.key,
  });
  final String lottie;
  final bool isPlayBackAndForward;
  final bool repeat;
  @override
  State<PlayLottie> createState() => _PlayLottieState();
}

class _PlayLottieState extends State<PlayLottie> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    if (widget.isPlayBackAndForward) {
      //! Add a listener to handle animation status changes
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          //! When animation completes, reverse it after a delay
          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              _controller.reverse();
            }
          });
        } else if (status == AnimationStatus.dismissed) {
          //! When animation is reversed completely, play it again
          if (mounted) {
            _controller.forward();
          }
        }
      });
    }

    if (widget.repeat) {
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          //! When animation completes, reverse it after a delay
          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              _controller.repeat();
            }
          });
        } else if (status == AnimationStatus.dismissed) {
          //! When animation is reversed completely, play it again
          if (mounted) {
            _controller.forward();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      widget.lottie,
      fit: BoxFit.fill,
      height: context.height * 0.2,
      width: context.width * 0.8,
      controller: _controller,
      onLoaded: (composition) {
        _controller
          ..duration = composition.duration
          ..forward();
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
