import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_rafael/src/util/routes.dart';
import 'package:tcc_rafael/src/widgets/BorderButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: _HomePageBody(),
      appBar: AppBar(
          title: Text('Sistema Guia'),
          centerTitle: true,
          automaticallyImplyLeading: true),
    ));
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BorderButtom(
              text: 'ONDE DESEJA IR?',
              textStyle: TextStyle(color: Colors.white, fontSize: 30),
              action: () => Navigator.pushNamed(context, mappedAreas)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BorderButtom(
                text: 'Configurações',
              ),
              SizedBox(width: 10),
              BorderButtom(
                  text: 'Como usar',
                  action: () => Navigator.pushNamed(context, comoUsar)),
            ],
          )
        ],
      ),
    );
  }
}
