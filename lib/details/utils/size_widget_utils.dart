part of on_toast_widget;

/// Choose what position will be shown.
Alignment _checkSizeAlignment(SizePositionType type) {
  switch (type) {
    case SizePositionType.TYPE_1:
      return Alignment.topCenter;
    case SizePositionType.TYPE_2:
      return Alignment.center;
    default:
      throw FlutterError("SizeType returned nonexistent value\n"
          "Report this issue on [on_toast_widget] Github.");
  }
}
