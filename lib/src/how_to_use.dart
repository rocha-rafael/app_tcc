import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: _HowToUseBody(),
      appBar: AppBar(
        title: Text('Como usar'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    ));
  }
}

class _HowToUseBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Um breve texto sobre como funciona e como utilizar o aplicativo.',
            textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
      ],
    );
  }
}
