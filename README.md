# on_toast_widget

[![Pub.dev](https://img.shields.io/pub/v/on_toast_widget?color=9cf&label=Pub.dev&style=flat-square)](https://pub.dev/packages/on_toast_widget)
[![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20IOS%20%7C%20Web%20%7C%20MacOs%20%7C%20Linux%20%7C%20Windows-9cf?&style=flat-square)](https://www.android.com/)
[![Flutter](https://img.shields.io/badge/Language-Flutter%20%7C%20Null--Safety-9cf?logo=flutter&style=flat-square)](https://www.flutter.dev/)

`on_toast_widget` is a [Flutter](https://flutter.dev/) Package used to show a custom and animated toast or snackbar Widget.

## Help:

**Any problem? [Issues](https://github.com/LucJosin/on_toast_widget/issues)** <br>
**Any suggestion? [Pull request](https://github.com/LucJosin/on_toast_widget/pulls)**

### Translations:

NOTE: Feel free to help with readme translations

* [English](README.md)
* [Portuguese](README.pt-BR.md)

### Topics:

<!-- * [Gif Examples](#gif-examples) -->
* [How to Install](#how-to-install)
* [How to use](#how-to-use)
* [Example](#example)
* [License](#license)

<!-- ## Gif Examples:
| <img src="https://i.imgur.com/QBtPoSj.gif" height="350"/> | <img src="https://i.imgur.com/PvTf3Zu.gif" height="350"/> | <img src="https://i.imgur.com/Mw7wZAo.gif" height="350"/> | <img src="https://i.imgur.com/9Wyj7YC.gif" height="350"/> |
|:---:|:---:|:---:|:---:|
| SLIDE-TOP | SLIDE-BOTTOM | ZOOM-TOP | ZOOM-BOTTOM |

| <img src="https://i.imgur.com/XvKHlUZ.gif" height="350"/> | <img src="https://i.imgur.com/kywlzw9.gif" height="350"/> | <img src="https://i.imgur.com/J0RqzXR.gif" height="350"/> | <img src="https://i.imgur.com/k9QaWay.gif" height="350"/> |
|:---:|:---:|:---:|:---:|
| FADE-TOP | FADE-BOTTOM | SIZE-TOP | SIZE-CENTER | -->

## How to Install:
Add the following code to your `pubspec.yaml`:
```yaml
dependencies:
  on_toast_widget: ^1.1.0
```

<!-- ## Some Features:

* :( -->

## TODO:

* Fix bugs.
* Add more `[Features]`

## How to use:

```dart
OnToastWidget() // The main widget to start using the plugin.
```
All types of parameters on this plugin:

|  Parameters  |   Arguments   |   Description   |
|--------------|-----------------|-----------------|
| `effectType` | `EffectType` | `Used to define the effect type that will be shown` | <br>
| `slidePositionType` | `SlidePositionType?` | `Used to define the postion of effect based effectType.` | <br>
| `zoomPositionType` | `ZoomPositionType?` | `Used to define the postion of effect based effectType.` | <br>
| `fadePositionType` | `FadePositionType?` | `Used to define the postion of effect based effectType.` | <br>
| `sizePositionType` | `SizePositionType?` | `Used to define the postion of effect based effectType.` | <br>
| `animationType` | `Curve` | `Used to define what animation type will be shown.` | <br>
| `messageDuration` | `Duration?` | `Used to define how long message will last.` | <br>
| `automaticallyReverse` | `bool?` | `Used to define if toast will reverse automatically.` | <br>
| `showInInitState` | `bool?` | `Used to define if message will shown when application starts.` | <br>
| `controller` | `AnimationController` | `Used to control toast animations.` | <br>
| `onStatusDismissed` | `VoidCallback?` | `It's a callback fuction that will be called when animation is dismissed.` | <br>
| `onStatusForward` | `VoidCallback?` | `It's a callback fuction that will be called when animation is initializated.` | <br>
| `onStatusReverse` | `VoidCallback?` | `It's a callback fuction that will be called when animation is reversed.` | <br>
| `onStatusCompleted` | `VoidCallback?` | `It's a callback fuction that will be called when animation is completed.` | <br>

**See more in [Documentation](https://pub.dev/documentation/on_toast_widget/latest/on_toast_widget/on_toast_widget-library.html)**

## Example:

#### OnToastWidget
```dart
   OnToastWidget(
     effectType: EffectType.SLIDE,
     slidePositionType: SlidePositionType.LEFT_BOTTOM,
     controller: _controller,
     showInInitState: true,
     animationType: Curves.linearToEaseOut,
     messageDuration: Duration(seconds: 2),
     automaticallyReverse: true,
     onStatusCompleted: () {
       //doSoomething
     },
     // onStatusDismissed: () {},
     // onStatusForward: () {},
     // onStatusReverse: () {},
     child: Container(
       height: 60,
       color: Colors.red,
     ),
 ),
```

## LICENSE:

* [LICENSE](https://github.com/LucJosin/on_toast_widget/blob/main/LICENSE)

> * [Back to top](#on_toast_widget)