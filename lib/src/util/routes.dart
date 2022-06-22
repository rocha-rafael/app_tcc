import 'package:flutter/widgets.dart';

const home = 'home';
const mappedAreas = 'mappedAreas';
const salasDeAula = 'salasDeAula';
const servicos = 'servicos';
const banheiros = 'banheiros';
const calcularRotas = 'calcularRotas';
const comoUsar = 'comoUsar';

void scheduleRedirectToRoute(BuildContext context, String route,
    {Object arguments, String removeUntilRoute}) {
  if (removeUntilRoute != null) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        route,
        ModalRoute.withName(removeUntilRoute),
        arguments: arguments,
      );
    });
  } else {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).pushNamed(route, arguments: arguments);
    });
  }
}

void schedulePopAll(BuildContext context,
    {String popUntilRoute = home}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.of(context).popUntil(ModalRoute.withName(popUntilRoute));
  });

}