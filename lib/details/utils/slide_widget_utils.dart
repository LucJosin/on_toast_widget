part of on_toast_widget;

/// Choose what position will be shown.
Alignment _getSlideAlignment(SlidePositionType position) {
  switch (position.index) {
    case 0:
      return Alignment.topCenter;
    case 1:
      return Alignment.bottomCenter;
    case 2:
      return Alignment.topLeft;
    case 3:
      return Alignment.bottomLeft;
    case 4:
      return Alignment.topRight;
    case 5:
      return Alignment.bottomRight;
    default:
      throw FlutterError("PositionType returned nonexistent value\n"
          "Report this issue on [on_toast_widget] Github.");
  }
}

/// Choose what animation will be shown based in position.
Animation<Offset> _getSlideAnimation(
  SlidePositionType position,
  AnimationController _controller,
  Curve _animation,
) {
  switch (position.index) {
    case 0:
      return _onTopAnim(_controller, _animation);
    case 1:
      return _onBottomAnim(_controller, _animation);
    case 2:
      return _onTopAndBottomLeftAnim(_controller, _animation);
    case 3:
      return _onTopAndBottomLeftAnim(_controller, _animation);
    case 4:
      return _onTopAndBottomRightAnim(_controller, _animation);
    case 5:
      return _onTopAndBottomRightAnim(_controller, _animation);
    default:
      throw FlutterError("Position(getAnimation) returned nonexistent value\n"
          "Report this issue on [on_connectivity_widget] Github.");
  }
}
