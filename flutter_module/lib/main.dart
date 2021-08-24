//@dart=2.9
import 'package:flutter/material.dart';
import 'package:msa_flutter_plugin/msa_flutter_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    initMSAtate();

    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

Future<void> initMSAtate() async {
  MSAData data = await MsaFlutterPlugin.getMsaIdConfigs();
  print("phg__ 是否支持MSA：${data.isSupport}");
  print("phg__ oaid: ${data.oaid}");
  print("phg__ vaid: ${data.vaid}");
  print("phg__ aaid: ${data.aaid}");
}