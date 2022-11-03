import 'package:flutter/material.dart';
import 'package:solzinho/solzinho.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  // final WeatherBloc bloc;
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dateFormate = DateFormat.yMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          dateFormate,
          style: const TextStyle(color: Color(0xff89D9FC)),
        )),
        elevation: 0,
      ),
      backgroundColor: const Color(0xff14A3F7),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(15),
        child: SolzinhoBottomBar(
          iconWind: Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/wind.png'),
          ),
          titleWind: Text('teste'),
          subtitleWind: Text('TESTE'),
          iconTemperature: Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/temperatures.png'),
          ),
          titleTemperature: Text('teste direita'),
          subtitleTemperature: Text('teste direita'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 35, right: 35),
            child: SolzinhoSearchWidget(),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '32º',
            style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
