import 'package:flutter/material.dart';
import 'package:solzinho/solzinho.dart';
import 'package:waether_forecast_app/app/modules/domain/entities/weather_entity.dart';
import 'package:waether_forecast_app/app/modules/presenter/bloc/weather_bloc.dart';

class HomePage extends StatefulWidget {
  // final WeatherBloc bloc;
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff14A3F7),
      bottomNavigationBar: SolzinhoBottomBar(),
    );
  }
}
