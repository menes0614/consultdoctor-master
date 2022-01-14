import 'package:ConsultDoc/Homepage.dart';
import 'package:ConsultDoc/style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Duration get duration => null;

  @override
  Widget build(BuildContext context) {
    return screen(context);
  }

  Widget screen(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Doktorum ile \n Sağlınız Güvende''.',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/doctorwithnurse.png')),
            SizedBox(
              height: 60,
            ),
            Container(
              child: FlatButton(
                  hoverColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.all(20),
                  color: blue,
                  splashColor: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    'Randevu için >>',
                    style: TextStyle(fontSize: 20, color: bcndclr),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
