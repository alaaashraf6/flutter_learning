import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeCodeScreen extends StatefulWidget {
  const NativeCodeScreen({super.key});

  @override
  State<NativeCodeScreen> createState() => _NativeCodeScreenState();
}

class _NativeCodeScreenState extends State<NativeCodeScreen> {
  static const platform = MethodChannel('samples.flutter.dev/battery');

  String _batteryLevel = 'Unknown battery level.';

  // Future<void> _getBatteryLevel() async {
  //   String batteryLevel;
  //   try {
  //     final result = await platform.invokeMethod<int>('getBatteryLevel');
  //     batteryLevel = 'Battery level at $result % .';
  //   } on PlatformException catch (e) {
  //     batteryLevel = "Failed to get battery level: '${e.message}'.";
  //   }
  //   setState(() {
  //     _batteryLevel = batteryLevel;
  //   });
  // }

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    platform.invokeMethod('getBatteryLevel').then((value)=>{
     setState(() {
      _batteryLevel = value;
    })
    }).catchError((error)=>{
       setState(() {
      _batteryLevel = 'faild ${error}';
    })
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        MaterialButton(onPressed: _getBatteryLevel) ,
        Text('level is :${_batteryLevel}')

      ],
    );
  }
}
