# on_toast_widget

[![Pub.dev](https://img.shields.io/pub/v/on_toast_widget?color=9cf&label=Pub.dev&style=flat-square)](https://pub.dev/packages/on_toast_widget)
[![Platforms](https://img.shields.io/badge/Platforms-Android%20%7C%20IOS%20%7C%20Web%20%7C%20MacOs%20%7C%20Linux%20%7C%20Windows-9cf?&style=flat-square)](https://www.android.com/)
[![Flutter](https://img.shields.io/badge/Language-Flutter%20%7C%20Null--Safety-9cf?logo=flutter&style=flat-square)](https://www.flutter.dev/)

`on_toast_widget` é um [Flutter](https://flutter.dev/) Package usado para mostrar um toast customizável e animado ou um snackbar Widget.

## Ajuda:

**Algum problema? [Issues](https://github.com/LucJosin/on_toast_widget/issues)** <br>
**Alguma sugestão? [Pull request](https://github.com/LucJosin/on_toast_widget/pulls)**

### Traduções:

NOTE: Fique à vontade para ajudar nas traduções

* [English](README.md)
* [Portuguese](README.pt-BR.md)

### Tópicos:

<!-- * [Exemplos em Gif:](#exemplos-em-gif) -->
* [Como instalar](#como-instalar)
* [Como usar](#como-usar)
* [Exemplo](#exemplo)
* [Licença](#licença)

<!-- ## Exemplos em Gif::
| <img src="https://i.imgur.com/QBtPoSj.gif" height="350"/> | <img src="https://i.imgur.com/PvTf3Zu.gif" height="350"/> | <img src="https://i.imgur.com/Mw7wZAo.gif" height="350"/> | <img src="https://i.imgur.com/9Wyj7YC.gif" height="350"/> |
|:---:|:---:|:---:|:---:|
| SLIDE-TOP | SLIDE-BOTTOM | ZOOM-TOP | ZOOM-BOTTOM |

| <img src="https://i.imgur.com/XvKHlUZ.gif" height="350"/> | <img src="https://i.imgur.com/kywlzw9.gif" height="350"/> | <img src="https://i.imgur.com/J0RqzXR.gif" height="350"/> | <img src="https://i.imgur.com/k9QaWay.gif" height="350"/> |
|:---:|:---:|:---:|:---:|
| FADE-TOP | FADE-BOTTOM | SIZE-TOP | SIZE-CENTER | -->

## Como instalar:
Adicione o seguinte codigo para seu `pubspec.yaml`:
```yaml
dependencies:
  on_toast_widget: ^1.1.0
```

<!-- ## Some Features:

* :( -->

## Para fazer:

* Arrumar erros.
* Adicionar mais `[Qualidades]`

## Como usar:

```dart
OnToastWidget() // O comando principal para usar o package.
```
Todos os tipos de métodos nesse plugin:

|  Parameters  |   Arguments   |   Description   |
|--------------|-----------------|-----------------|
| `effectType` | `EffectType` | `Usado para definir o tipo de efeito que será mostrado.` | <br>
| `slidePositionType` | `SlidePositionType?` | `Usado para definir o tipo de efeito baseado no effectType.` | <br>
| `zoomPositionType` | `ZoomPositionType?` | `Usado para definir o tipo de efeito baseado no effectType.` | <br>
| `fadePositionType` | `FadePositionType?` | `Usado para definir o tipo de efeito baseado no effectType.` | <br>
| `sizePositionType` | `SizePositionType?` | `Usado para definir o tipo de efeito baseado no effectType.` | <br>
| `animationType` | `Curve` | `Usado para definir qual animação será mostrada.` | <br>
| `messageDuration` | `Duration?` | `Usado para definir quanto tempo a menssagem irá durar.` | <br>
| `automaticallyReverse` | `bool?` | `Usado para definir se o toast irá voltar automaticamente.` | <br>
| `showInInitState` | `bool?` | `Usado para definir se mensagem irá ser mostrada quando aplicativo iniciar.` | <br>
| `controller` | `AnimationController` | `Usado para controlar toast animações.` | <br>
| `onStatusDismissed` | `VoidCallback?` | `É um callback fuction que irá ser chamado quando a animação for dispensada.` | <br>
| `onStatusForward` | `VoidCallback?` | `É um callback fuction que irá ser chamado quando a animação for inicializada.` | <br>
| `onStatusReverse` | `VoidCallback?` | `É um callback fuction que irá ser chamado quando a animação for revertida.` | <br>
| `onStatusCompleted` | `VoidCallback?` | `É um callback fuction que irá ser chamado quando a animação for completa.` | <br>

**Veja mais em [Documentação](https://pub.dev/documentation/on_toast_widget/latest/on_toast_widget/on_toast_widget-library.html)**

## Exemplo:

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

## LICENÇA:

* [LICENÇA](https://github.com/LucJosin/on_toast_widget/blob/main/LICENSE)

> * [Voltar ao Topo](#on_toast_widget)