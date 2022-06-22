import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcc_rafael/src/util/routes.dart';
import 'package:tcc_rafael/src/widgets/BorderButton.dart';

class MappedAreas extends StatelessWidget {
  const MappedAreas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: _MappedAreasBody(),
      appBar: AppBar(
        title: Text('Onde deseja ir?'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    ));
  }
}

class _MappedAreasBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BorderButtom(text: 'Sala de aula', action: ()=> Navigator.pushNamed(context, salasDeAula)),
        BorderButtom(text: 'Banheiros', action: ()=> Navigator.pushNamed(context, banheiros)),
        BorderButtom(text: 'Serviços', action: ()=> Navigator.pushNamed(context, servicos))
      ],
    );
  }
}
