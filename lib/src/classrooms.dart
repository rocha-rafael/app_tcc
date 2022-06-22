import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_rafael/src/util/routes.dart';

import 'widgets/BorderButton.dart';

class Classrooms extends StatelessWidget {
  const Classrooms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: _ClassroomsBody(),
          appBar: AppBar(
            title: Text('Salas de aula'),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
        ));
  }
}

class _ClassroomsBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BorderButtom(text: 'Sala 101', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 101')),
          BorderButtom(text: 'Sala 102', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 102')),
          BorderButtom(text: 'Sala 103', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 103')),
          BorderButtom(text: 'Sala 104', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 104')),
          BorderButtom(text: 'Sala 105', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 105')),
          BorderButtom(text: 'Sala 106', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 106')),
          BorderButtom(text: 'Sala 107', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 107')),
          BorderButtom(text: 'Sala 108', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala 108')),
        ],
      ),
    );
  }
}

