part of '../widgets.dart';

class FlashCardViewCaptureImageScreen extends StatefulWidget {
  const FlashCardViewCaptureImageScreen({
    required this.imagePath,
    required this.repaintKey,
    super.key,
  });

  ///! Path of the image to be displayed.
  final String imagePath;

  ///! Key used for repaint boundary to capture the widget.
  final GlobalKey repaintKey;

  @override
  State<FlashCardViewCaptureImageScreen> createState() =>
      _FlashCardViewCaptureImageScreenState();
}

class _FlashCardViewCaptureImageScreenState
    extends State<FlashCardViewCaptureImageScreen> {
  @override
  void initState() {
    super.initState();
    //! Log the image path for debugging purposes.
    if (kDebugMode) log('Capture Image : ${widget.imagePath}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  ///! Builds the app bar for the screen.
  GradientAppBar _buildAppBar(BuildContext context) {
    return GradientAppBar(
      title: 'Flashes',
      context: context,
      action: [
        GestureDetector(
          onTap: _onShareButtonPressed,
          child: Icons.share.toCustomIcon(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.kWhite
                : AppColors.kBlack,
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }

  ///! Builds the body of the screen.
  Widget _buildBody() {
    return Center(
      child: PhotoView(
        imageProvider: FileImage(File(widget.imagePath)),
      ),
    );
  }

  ///! Handles the share button press to capture and share the image.
  Future<void> _onShareButtonPressed() async {
    final path = await CaptureAndShareFile.instance
        .captureAndShare(repaintKey: widget.repaintKey);

    if (path.isNotEmpty) {
      await Share.shareXFiles([XFile(path)]);
    }
  }
}
