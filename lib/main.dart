import 'package:flutter/material.dart';
import 'package:my_house_design/core/helper_function/on_generate_routes.dart';
import 'package:my_house_design/features/splash/presentation/views/splash_view.dart';


void main() {
  runApp(const HouseDesign());
}

class HouseDesign extends StatelessWidget {
  const HouseDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute ,      
      initialRoute: SplashView.routeName,



    );
  }
}
