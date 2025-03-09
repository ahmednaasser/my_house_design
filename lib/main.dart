import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_house_design/core/helper_function/on_generate_routes.dart';
import 'package:my_house_design/features/splash/presentation/views/splash_view.dart';
//import 'core/services/shared_preferences_singleton.dart';
import 'generated/l10n.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  // await Prefs.init();

  runApp(const HouseDesign());
}

class HouseDesign extends StatelessWidget {
  const HouseDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
