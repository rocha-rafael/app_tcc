import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tcc_rafael/src/widgets/BorderButton.dart';

class CalculateRoutes extends StatelessWidget {
  const CalculateRoutes({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: _CalculateRoutesBody(),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    ));
  }
}

class _CalculateRoutesBody extends StatefulWidget {
  const _CalculateRoutesBody({Key key}) : super(key: key);

  @override
  State<_CalculateRoutesBody> createState() => _CalculateRoutesBodyState();
}

class _CalculateRoutesBodyState extends State<_CalculateRoutesBody> {
  bool calculating = true;

  @override
  Widget build(BuildContext context) {
    if (calculating) {
      delay();
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Calculando rota',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SpinKitThreeBounce(color: Colors.white),
        ],
      );
    } else
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BorderButtom(
            text: 'Iniciar Rota',
            action: () {},
          ),
        ],
      );
  }

  void delay() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      calculating = false;
    });
  }
}
