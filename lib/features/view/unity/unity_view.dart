import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityView extends StatefulWidget {
  const UnityView({super.key});

  @override
  State<UnityView> createState() => _UnityViewState();
}

class _UnityViewState extends State<UnityView> {
  UnityWidgetController? _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  // Communcation from Flutter to Unity
  void setRotationSpeed(String speed) {
    _unityWidgetController?.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  // // Communication from Unity to Flutter
  // void Function(dynamic)? onUnityMessage(controller, message) {
  //   print('Received message from unity: ${message.toString()}');
  //   return null;
  // }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        UnityWidget(
          onUnityCreated: onUnityCreated,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Card(
            elevation: 10,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Rotation speed:"),
                ),
                Slider(
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                    setRotationSpeed(value.toString());
                  },
                  value: _sliderValue,
                  min: 0,
                  max: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
