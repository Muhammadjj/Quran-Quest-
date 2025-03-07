part of 'utils.dart';

class AppTypography {
  //! font weight
  static const FontWeight _w800 = FontWeight.w800;
  static const FontWeight _w500 = FontWeight.w500;
  static const FontWeight _w300 = FontWeight.w300;
  static const FontWeight _w400 = FontWeight.w400;
  static const FontWeight _bold = FontWeight.bold;

  //! 144
  static TextStyle bold144({Color? color}) => TextStyle(
        fontSize: 144.sp,
        fontWeight: _w800,
        color: color,
        fontFamily: 'VarelaRound',
      );
  //! 72
  static TextStyle bold72({Color? color}) =>
      TextStyle(fontSize: 72.sp, fontWeight: _w800, color: color);
  //! 56
  static TextStyle bold56({Color? color}) =>
      TextStyle(fontSize: 56.sp, fontWeight: _w800, color: color);
  //! 48
  static TextStyle bold48({Color? color}) => TextStyle(
        fontSize: 48.sp,
        fontWeight: _w800,
        color: color,
        fontFamily: 'VarelaRound',
      );
  //! 24
  static TextStyle bold24({Color? color}) =>
      TextStyle(fontSize: 24.sp, fontWeight: _w800, color: color);
  static TextStyle medium24({Color? color}) =>
      TextStyle(fontSize: 24.sp, fontWeight: _w500, color: color);
  // ! 28
  static TextStyle bold28({Color? color}) =>
      TextStyle(fontSize: 28.sp, fontWeight: _w800, color: color);
  //! 18
  static TextStyle medium18({Color? color}) => TextStyle(
        fontSize: 18.sp,
        fontWeight: _w500,
        color: color,
        fontFamily: 'VarelaRound',
      );

      static TextStyle bold18({Color? color}) => TextStyle(
        fontSize: 18.sp,
        fontWeight: _bold,
        color: color,
        fontFamily: 'VarelaRound',
      );
  //! 14
  static TextStyle medium14({Color? color}) => TextStyle(
        fontSize: 14.sp,
        fontWeight: _w500,
        color: color,
        fontFamily: 'CfSnowball',
      );
  static TextStyle bold14({Color? color}) =>
      TextStyle(fontSize: 14.sp, fontWeight: _bold, color: color);
  static TextStyle thin14({Color? color}) =>
      TextStyle(fontSize: 14.sp, fontWeight: _w300, color: color);
  //! 12
  static TextStyle medium12({Color? color}) =>
      TextStyle(fontSize: 12.sp, fontWeight: _w400, color: color);
}
