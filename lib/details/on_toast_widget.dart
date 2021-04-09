/*
Author: Lucas Josino
Github: https://github.com/LucasPJS
Package: on_toast_widget
Homepage: https://github.com/LucasPJS/on_toast_widget
Copyright: © 2021, Lucas Josino. All rights reserved.
License: https://github.com/LucasPJS/on_toast_widget/blob/main/LICENSE
*/

part of on_toast_widget;

/// Main Widget for use on_toast_widget
///
/// This widget will will show a custom and animated toast or snackbar Widget simply using [AnimationController].
///
/// Usage:
///
/// * Animation and animation control depends on a [AnimationController].
/// * You will need pass in [controller] parameter this [AnimationController].
///
/// Example:
///
/// ```dart
///   OnToastWidget(
///     effectType: EffectType.SLIDE,
///     slidePositionType: SlidePositionType.LEFT_BOTTOM,
///     controller: _controller,
///     showInInitState: true,
///     animationType: Curves.linearToEaseOut,
///     messageDuration: Duration(seconds: 2),
///     automaticallyReverse: true,
///     onStatusCompleted: () {
///       //doSoomething
///     },
///     // onStatusDismissed: () {},
///     // onStatusForward: () {},
///     // onStatusReverse: () {},
///     child: Container(
///       height: 60,
///       color: Colors.red,
///     ),
/// ),
/// ```
///
/// Important:
///
/// * It's important use animation [Position] based in your [EffectType] or will cause a FlutterError.
/// * This package it's under development, any issue or suggestion,
///   [on_toast_widget Github](https://github.com/LucasPJS/on_audio_query).
///
class OnToastWidget extends StatefulWidget {
  /// [effectType] the effect type that will be shown.
  ///
  /// Important:
  ///
  /// * [effectType] can't be null.
  final EffectType effectType;

  /// [slidePositionType] the postion of effect based in your choice.
  ///
  /// Usage:
  ///
  /// * You will need to use this parameter when [effectType] == SLIDE.
  ///
  /// Important:
  ///
  /// * [slidePositionType] can't be null when [effectType.SLIDE] is selected.
  /// * If you try call multiples positions will throw a error.
  final SlidePositionType? slidePositionType;

  /// [zoomPositionType] the postion of effect based in your choice.
  ///
  /// Usage:
  ///
  /// * You will need to use this parameter when [effectType] == ZOOM.
  ///
  /// Important:
  ///
  /// * [zoomPositionType] can't be null when [effectType.ZOOM] is selected.
  /// * If you try call multiples positions will throw a error.
  final ZoomPositionType? zoomPositionType;

  /// [fadePositionType] the postion of effect based in your choice.
  ///
  /// Usage:
  ///
  /// * You will need to use this parameter when [effectType] == FADE.
  ///
  /// Important:
  ///
  /// * [fadePositionType] can't be null when [effectType.FADE] is selected.
  /// * If you try call multiples positions will throw a error.
  final FadePositionType? fadePositionType;

  /// [sizePositionType] the postion of effect based in your choice.
  ///
  /// Usage:
  ///
  /// * You will need to use this parameter when [effectType] == SIZE.
  ///
  /// Important:
  ///
  /// * [sizePositionType] can't be null when [effectType.SIZE] is selected.
  /// * If you try call multiples positions will throw a error.
  final SizePositionType? sizePositionType;

  /// [animationType] is used to define what animation type will be shown.
  ///
  /// Important:
  ///
  /// * If [animationType] is null, will be set to [linearToEaseOut].
  final Curve animationType;

  /// [child] is the Widget child that will be animated.
  ///
  /// Important:
  ///
  /// * [child] can't be null. Cannot provide animation without any widget.
  final Widget? child;

  /// [messageDuration] is used to define how long message will last.
  ///
  /// Important:
  ///
  /// * If [messageDuration] is null, will be set to [1 Second].
  final Duration? messageDuration;

  /// [automaticallyReverse] is used to define if toast will reverse automatically
  /// or only when [controller.reverse] is called.
  ///
  /// Important:
  ///
  /// * If [automaticallyReverse] is null, will be set to [true]
  final bool? automaticallyReverse;

  /// [showInInitState] is used to define if message will shown when application starts.
  ///
  /// Important:
  ///
  /// * If [showInInitState] is null, will be set to [false].
  final bool? showInInitState;

  /// [controller] is used to control toast animations.
  ///
  /// Important:
  ///
  /// * [controller] can't be null.
  final AnimationController controller;

  // CallBackListener

  /// [onStatusDismissed] it's a callback fuction that will be called when animation is dismissed.
  final VoidCallback? onStatusDismissed;

  /// [onStatusForward] it's a callback fuction that will be called when animation is initializated.
  final VoidCallback? onStatusForward;

  /// [onStatusReverse] it's a callback fuction that will be called when animation is reversed.
  final VoidCallback? onStatusReverse;

  /// [onStatusCompleted] it's a callback fuction that will be called when animation is completed.
  final VoidCallback? onStatusCompleted;

  /// Main Widget for use on_toast_widget
  ///
  /// This widget will will show a custom and animated toast or snackbar Widget simply using [AnimationController].
  ///
  /// Usage:
  ///
  ///  * Animation and animation control depends on a [AnimationController].
  ///  * You will need pass in [controller] parameter this [AnimationController].
  ///
  /// How to create a [AnimationController]?
  ///
  /// * First: You will create a StateFulWidget using a [SingleTickerProviderStateMixin]
  ///
  /// ```dart
  ///   class SomeName extends StatefulWidget {
  ///   @override
  ///     _SomeNameState createState() => _SomeNameState();
  ///   }
  ///
  ///   class _SomeNameState extends State<SomeName> with SingleTickerProviderStateMixin {...}
  /// ```
  ///
  /// * Second: Crate a [AnimationController]
  ///
  /// ```dart
  ///   //Using Flutter Null-Safety
  ///   late AnimationController _controller = AnimationController(vsync: this, duration: AnyDuration);
  /// ```
  ///
  /// * Third: Now you just need add [_controller] to [OnToastWidget] parameter
  ///
  /// ```dart
  ///   ...
  ///   body: OnToastWidget(
  ///     controller: _controller,
  ///   ...
  ///   );
  /// ```
  ///
  /// * You will be able to control animation any time just using [_controller]
  ///
  /// Ex1:
  ///
  /// ```dart
  ///    ...
  ///    onTap: () {
  ///      _controller.forward(); //Initialize animation
  ///    },
  /// ```
  ///
  /// Ex2:
  ///
  /// ```dart
  ///    ...
  ///    onTap: () {
  ///      _controller.stop(); //Stop animation
  ///    },
  /// ```
  ///
  /// Others:
  ///
  ///  * _controller.reset();
  ///  * _controller.reverse();
  ///  * _controller.repeat();
  ///  * etc..
  ///
  /// Important:
  ///
  ///  * It's important use animation [Position] based in your [EffectType] or will cause a FlutterError.
  ///  * This package it's under development, any issue or suggestion,
  ///   [on_toast_widget Github](https://github.com/LucasPJS/on_audio_query)
  ///

  const OnToastWidget({
    // Unique Key
    Key? key,
    // Basics parameters
    required this.effectType,
    required this.controller,
    required this.child,
    // AnimationPositions
    this.slidePositionType,
    this.fadePositionType,
    this.sizePositionType,
    this.zoomPositionType,
    // Nullable parameters
    this.animationType = Curves.linearToEaseOut,
    this.messageDuration = const Duration(seconds: 1),
    this.automaticallyReverse = true,
    this.showInInitState = false,
    // Status
    this.onStatusDismissed,
    this.onStatusForward,
    this.onStatusReverse,
    this.onStatusCompleted,
  })  : assert(
            effectType == EffectType.SLIDE ||
                slidePositionType == null && zoomPositionType != null ||
                fadePositionType != null ||
                sizePositionType != null,
            "EffectType has been selected but <this>PositionType is null or <other>PositionType is't null.\n"
            "Give <this>PositionType a value or remove value from <other>PositionType."),
        assert(
            effectType == EffectType.ZOOM ||
                zoomPositionType == null && slidePositionType != null ||
                fadePositionType != null ||
                sizePositionType != null,
            "EffectType has been selected but <this>PositionType is null or <other>PositionType is't null.\n"
            "Give <this>PositionType a value or remove value from <other>PositionType."),
        assert(
            effectType == EffectType.FADE ||
                fadePositionType == null && slidePositionType != null ||
                zoomPositionType != null ||
                sizePositionType != null,
            "EffectType has been selected but <this>PositionType is null or <other>PositionType is't null.\n"
            "Give <this>PositionType a value or remove value from <other>PositionType."),
        assert(
            effectType == EffectType.SIZE ||
                sizePositionType == null && slidePositionType != null ||
                zoomPositionType != null ||
                fadePositionType != null,
            "EffectType has been selected but <this>PositionType is null or <other>PositionType is't null.\n"
            "Give <this>Type a value or remove value from <other>PositionType."),
        assert(
            child != null,
            "Cannot provide both a child and a defaultType.\n"
            "Define a child Widget.");

  @override
  _OnToastWidgetState createState() => _OnToastWidgetState();
}

class _OnToastWidgetState extends State<OnToastWidget> {
  @override
  void initState() {
    super.initState();

    // Used to define if animation will start when widget start.
    if (widget.showInInitState == true) widget.controller.forward();

    // Animation listener, can be controlled internally and externally.
    widget.controller
      ..addStatusListener(
        (status) {
          switch (status) {
            // Called when animation is dismissed.
            case AnimationStatus.dismissed:
              // Check if something will happen when status change.
              if (widget.onStatusDismissed != null) {
                widget.onStatusDismissed!();
              }
              break;
            // Called when animation is initializated.
            case AnimationStatus.forward:
              // Check if something will happen when status change.
              if (widget.onStatusForward != null) {
                widget.onStatusForward!();
              }
              break;
            // Called when animation is reversed.
            case AnimationStatus.reverse:
              // Check if something will happen when status change.
              if (widget.onStatusReverse != null) {
                widget.onStatusReverse!();
              }
              break;
            // Called when animation is completed.
            case AnimationStatus.completed:
              // Check if toast will automatically reverse or not.
              if (widget.automaticallyReverse == true) {
                // Define a duration for message.
                Timer(widget.messageDuration!, () {
                  setState(() {
                    widget.controller.reverse();
                  });
                });
              }

              // Check if something will happen when status change.
              if (widget.onStatusCompleted != null) {
                widget.onStatusCompleted!();
              }
              break;
            default:
              throw FlutterError("Value for [addStatusListener] don't exist\n"
                  "Report this issue on [on_toast_widget] Github.");
          }
        },
      );
  }

  @override
  void dispose() {
    super.dispose();
    // Remove animation in application to add a better performace.
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Check the effect type.
    switch (widget.effectType) {
      //
      case EffectType.SLIDE:
        return Container(
          // Checking animation position based in [SlidePositionType].
          alignment: _getSlideAlignment(
            widget.slidePositionType ?? SlidePositionType.BOTTOM,
          ),
          //
          child: SlideTransition(
            // Checking animation type.
            position: _getSlideAnimation(
              widget.slidePositionType ?? SlidePositionType.BOTTOM,
              widget.controller,
              widget.animationType,
            ),
            // Widget that will be animated.
            child: widget.child,
          ),
        );
      //
      case EffectType.ZOOM:
        return Container(
          // Checking animation position based in [ZoomPositionType].
          alignment: _getZoomAlignment(
            widget.zoomPositionType ?? ZoomPositionType.BOTTOM,
          ),
          child: ScaleTransition(
            // Checking animation type.
            scale: _onZoomAnim(widget.controller, widget.animationType),
            // Widget that will be animated.
            child: widget.child,
          ),
        );
      //
      case EffectType.FADE:
        return Container(
          // Checking animation position based in [FadePositionType].
          alignment: _getFadeAlignment(
            widget.fadePositionType ?? FadePositionType.BOTTOM,
          ),
          child: FadeTransition(
            // Checking animation type.
            opacity: _onFadeAnim(widget.controller, widget.animationType),
            // Widget that will be animated.
            child: widget.child,
          ),
        );
      //
      case EffectType.SIZE:
        return Container(
          // Checking animation position based in [SizePositionType].
          alignment: _checkSizeAlignment(widget.sizePositionType!),
          child: SizeTransition(
            axis: _checkSizeAlignment(widget.sizePositionType!) ==
                    Alignment.center
                ? Axis.vertical
                : Axis.horizontal,
            // Checking animation type.
            sizeFactor: _onSizeAnim(widget.controller, widget.animationType),
            // Widget that will be animated.
            child: widget.child,
          ),
        );
      default:
        throw FlutterError("Value for [EffectType] don't exist\n"
            "Report this issue on [on_toast_widget] Github.");
    }
  }
}

// Extras:
//
// #AnimationStatus:
//  * Dismissed
//  * Forward
//  * Reverse
//  * Completed
//
