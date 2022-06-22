import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tcc_rafael/src/bathrooms.dart';
import 'package:tcc_rafael/src/calculate_routes.dart';
import 'package:tcc_rafael/src/home_page.dart';
import 'package:tcc_rafael/src/how_to_use.dart';
import 'package:tcc_rafael/src/mapped_areas.dart';
import 'package:tcc_rafael/src/services.dart';
import 'package:tcc_rafael/src/util/routes.dart';
import 'package:tcc_rafael/src/classrooms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema Guia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Sistema Guia',
      supportedLocales: const [Locale('pt', 'BR')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: MaterialColor(
          Colors.black.value,
          <int, Color>{
            50: Colors.black,
            100: Color(0xFFBBDEFB),
            200: Colors.black26,
            300: Color(0xFF64B5F6),
            400: Color(0xFF42A5F5),
            500: Color(Colors.black.value),
            600: Color(0xFF1E88E5),
            700: Colors.black87,
            800: Color(0xFF1565C0),
            900: Colors.black87,
          },
        ),
        primaryColor: Colors.black,
      ),
      initialRoute: 'home',
      onGenerateRoute: _onGenerateRoutes,
    );
  }

  Route<dynamic> _onGenerateRoutes(RouteSettings settings) {
    if (settings.name == home) {
      return _homeRouteGenerator(settings);
    }
    if (settings.name == mappedAreas) {
      return _mappedAreasRouteGenerator(settings);
    }
    if (settings.name == salasDeAula) {
      return _salasDeAulaRouteGenerator(settings);
    }
    if (settings.name == servicos) {
      return _servicosRouteGenerator(settings);
    }
    if (settings.name == banheiros) {
      return _banheirosRouteGenerator(settings);
    }

    if (settings.name == calcularRotas) {
      return _calcularRotasRouteGenerator(settings);
    }

    if (settings.name == comoUsar) {
      return _comoUsarRouteGenerator(settings);
    }
    return null;
  }

  Route _homeRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: home),
      builder: (BuildContext context) {
        return HomePage();
      },
    );
  }

  Route _mappedAreasRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: mappedAreas),
      builder: (BuildContext context) {
        return MappedAreas();
      },
    );
  }

  Route _salasDeAulaRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: salasDeAula),
      builder: (BuildContext context) {
        return Classrooms();
      },
    );
  }

  Route _servicosRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: servicos),
      builder: (BuildContext context) {
        return Services();
      },
    );
  }

  Route _banheirosRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: banheiros),
      builder: (BuildContext context) {
        return Bathrooms();
      },
    );
  }

  Route _calcularRotasRouteGenerator(RouteSettings settings) {
    String title = settings.arguments;
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: calcularRotas),
      builder: (BuildContext context) {
        return CalculateRoutes(title: title);
      },
    );
  }

  Route _comoUsarRouteGenerator(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: comoUsar),
      builder: (BuildContext context) {
        return HowToUse();
      },
    );
  }
}
