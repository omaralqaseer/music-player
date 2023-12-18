extension StringExtensions on String? {
  String get orEmpty => this ?? "";

  String orDefault(String value) => this ?? value;
}

extension NumExtensions on num? {
  num get orZero => this ?? 0;

  num orDefault(num value) => this ?? value;
}

extension DurationExtensions on Duration {
  String formatDuration({bool withSpace = true}) {
    String hours = (inHours > 0) ? '$inHours:' : '';
    String minutes = (inMinutes % 60 < 10)
        ? (inMinutes % 60).toString()
        : (inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (inSeconds % 60).toString().padLeft(2, '0');
    return withSpace ? '$hours $minutes : $seconds' : '$hours$minutes:$seconds';
  }
}
