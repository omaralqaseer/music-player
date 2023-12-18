import 'package:music_player/src/design_system/design_system.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    required this.style,
    this.textAlign,
  }) : super(key: key);

  const AppText.title(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        super(key: key);

  const AppText.bodyBold(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        super(key: key);

  const AppText.bodyRegular(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        super(key: key);

  const AppText.captionBold(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        super(key: key);

  const AppText.captionLight(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        super(key: key);

  const AppText.smallLight(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  })  : style = const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        super(key: key);

  final String data;
  final TextStyle style;
  final Color? color;
  final double? fontSize;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? AppColorsData.white;
    return Text(
      data,
      textAlign: textAlign,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        decoration: textDecoration,
      ),
      maxLines: maxLines,
    );
  }
}
