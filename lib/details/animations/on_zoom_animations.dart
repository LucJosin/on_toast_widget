part of on_toast_widget;

/// Zoom Animation.
///
/// Note: If you are using BottomNagivationBar, the message will appear above it.
/// Note: If you are using AppBar, the message will appear below it.
Animation<double> _onZoomAnim(
    AnimationController _controller, Curve _animation) {
  return Tween<double>(begin: 0.0, end: 1.0)
      .animate(CurvedAnimation(parent: _controller, curve: _animation));
}
