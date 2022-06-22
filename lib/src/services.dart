import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_rafael/src/util/routes.dart';

import 'widgets/BorderButton.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: _ServicesBody(),
          appBar: AppBar(
            title: Text('Serviços'),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
        ));
  }
}

class _ServicesBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BorderButtom(text: 'SAIAC 1', secondaryText: 'Primeiro andar do cettal', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'SAIAC 1')),
        BorderButtom(text: 'SAIAC 2', secondaryText: 'Segundo andar do cettal', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'SAIAC 2')),
        BorderButtom(text: 'Coordenação', secondaryText: 'Segundo andar do cettal', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Coordenação')),
        BorderButtom(text: 'Sala de impressão', secondaryText: 'Primeiro andar do cettal', action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Sala de impressão')),
      ],
    );
  }
}

