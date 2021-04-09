import 'package:flutter/material.dart';
import 'package:on_toast_widget/on_toast_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OnToastExample"),
        ),
        body: Stack(
          children: [
            OnToastWidget(
              effectType: EffectType.SIZE,
              sizePositionType: SizePositionType.TYPE_2,
              controller: _controller,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
                height: 70,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _controller.forward();
                },
                onLongPress: () {
                  _controller.reverse();
                },
                child: Text("Something"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
