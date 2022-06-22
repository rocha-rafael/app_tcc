import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_rafael/src/util/routes.dart';

import 'widgets/BorderButton.dart';

class Bathrooms extends StatelessWidget {
  const Bathrooms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: _BathroomsBody(),
      appBar: AppBar(
        title: Text('Banheiros'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    ));
  }
}

class _BathroomsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BorderButtom(
            text: 'Banheiro 1',
            secondaryText: 'Próximo ao auditório',
            action: () => Navigator.pushNamed(context, calcularRotas, arguments: 'Banheiro 1')),
      ],
    );
  }
}
