part of on_toast_widget;

/// Choose what position will be shown.
Alignment _getFadeAlignment(FadePositionType position) {
  switch (position.index) {
    case 0:
      return Alignment.topCenter;
    case 1:
      return Alignment.bottomCenter;
    case 2:
      return Alignment.center;
    default:
      throw FlutterError("FadePositionType returned nonexistent value\n"
          "Report this issue on [on_toast_widget] Github.");
  }
}
