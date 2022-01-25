part of on_toast_widget;

//
/// Message animation from Bottom of application.
///
/// Note: If you are using BottomNagivationBar, the message will appear above it.
Animation<Offset> _onBottomAnim(
  AnimationController _controller,
  Curve _animation,
) {
  return Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(
    CurvedAnimation(
      parent: _controller,
      curve: _animation,
    ),
  );
}

/// Message animation from Top of application.
///
/// Note: If you are using AppBar, the message will appear below it.
Animation<Offset> _onTopAnim(
  AnimationController _controller,
  Curve _animation,
) {
  return Tween<Offset>(begin: const Offset(0.0, -1.0), end: Offset.zero)
      .animate(
    CurvedAnimation(
      parent: _controller,
      curve: _animation,
    ),
  );
}

/// Message animation from Left Top_or_Bottom of application.
Animation<Offset> _onTopAndBottomLeftAnim(
  AnimationController _controller,
  Curve _animation,
) {
  return Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
      .animate(
    CurvedAnimation(
      parent: _controller,
      curve: _animation,
    ),
  );
}

/// Message animation from Right Top_or_Bottom of application.
Animation<Offset> _onTopAndBottomRightAnim(
  AnimationController _controller,
  Curve _animation,
) {
  return Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
    CurvedAnimation(
      parent: _controller,
      curve: _animation,
    ),
  );
}
