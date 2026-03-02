part of 'common.dart';

///! A singleton class to capture a widget as an image and save it as a file.
class CaptureAndShareFile {
  factory CaptureAndShareFile() => instance;
  //! Singleton instance
  CaptureAndShareFile._();
  static final CaptureAndShareFile instance = CaptureAndShareFile._();

  ///! Captures the widget represented by the [repaintKey] and saves it as a PNG file.
  ///! Returns the file path of the saved image or an empty string if an error occurs.
  Future<String> captureAndShare({required GlobalKey repaintKey}) async {
    try {
      //! Get the render boundary of the widget
      final boundary = repaintKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return 'No Capture Image';

      //! Convert the boundary to an image
      final image = await boundary.toImage();
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) return 'No Bytes Data';

      //! Convert the image to bytes
      final pngBytes = byteData.buffer.asUint8List();

      //! Save the image to a temporary directory
      final dir = await getTemporaryDirectory();
      final path =
          '${dir.path}/card_${DateTime.now().millisecondsSinceEpoch}.png';
      await File(path).writeAsBytes(pngBytes);

      return path;
    } on Exception catch (error) {
      //! Log the error and return an empty string
      log('Error capturing and sharing: $error');
      return '';
    }
  }
}
