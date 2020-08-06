import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/background_1.png'),
              fit: BoxFit.cover),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            blockCenter(),
            blockEnd(),
          ],
        ),
      ),
    );
  }

  Widget blockCenter() {
    return Column(
      children: <Widget>[
        Text(
          'TRAVELER',
          style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Comparte el mundo y conviértete en un viajero increíble',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget blockEnd() {
    return Column(
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 110,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0xff52E4C4),
          child: Text(
            'Ingresar',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff286759),
              letterSpacing: 2,
            ),
          ),
          onPressed: () {
            setState(() {
              counter++;
              print('Numero: $counter');
            });
          },
        ),
        SizedBox(
          height: 70,
        ),
        Text(
          'Nuevo miembro',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
