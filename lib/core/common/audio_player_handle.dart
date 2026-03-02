part of 'common.dart';

class AudioPlayerHandler {
  AudioPlayerHandler() {
    _playerStateSubscription = playerAudio.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        isPlaying = false;
        currentlyPlayingAyah = null;
        playerAudio.seek(Duration.zero);
        playerAudio.stop();
      }
    });
  }
  final playerAudio = AudioPlayer();
  bool isPlaying = false;
  int? currentlyPlayingAyah;
  late final StreamSubscription<PlayerState> _playerStateSubscription;

  void dispose() {
    _playerStateSubscription.cancel();
    playerAudio.dispose();
  }

  Future<void> toggleAudio(
    String audioUrl,
    int ayahIndex,
    void Function(VoidCallback fn) setState,
  ) async {
    try {
      if (currentlyPlayingAyah != ayahIndex) {
        await playerAudio.stop();
        await playerAudio.setAudioSource(
          AudioSource.uri(Uri.parse(audioUrl)),
          initialPosition: Duration.zero,
          preload: false,
        );
        setState(() {
          currentlyPlayingAyah = ayahIndex;
          isPlaying = true;
        });
        await playerAudio.play();
      } else {
        if (isPlaying) {
          await playerAudio.pause();
          setState(() {
            isPlaying = false;
          });
        } else {
          await playerAudio.play();
          setState(() {
            isPlaying = true;
          });
        }
      }
    } on Exception catch (e) {
      log('Audio Error: $e');
    }
  }
}
