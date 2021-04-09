part of on_toast_widget;

/// Define toast position in application.
///
/// Types:
///
/// * [TOP]
/// * [BOTTOM]
/// * [CENTER]
///
enum ZoomPositionType {
  /// Top of application.
  ///
  /// Note: If you are using AppBar, the message will appear below it.
  TOP,

  /// Bottom of application.
  ///
  /// Note: If you are using BottomNagivationBar, the message will appear above it.
  BOTTOM,

  /// Center of application.
  CENTER,
}
