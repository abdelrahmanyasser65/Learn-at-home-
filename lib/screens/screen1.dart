import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:learnarhome/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 120),
            child: Image(image: AssetImage('images/Illustration.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 58, right: 58),
            child: Column(
              children: const [
                Text(
                  "Learn at home!",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "efficiently and effectively",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 95, right: 95),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              style: ElevatedButton.styleFrom(
                  primary: HexColor('#2C2B47'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const SizedBox(
                height: 60,
                width: 200,
                child: Center(
                  child: Text(
                    "Start Now ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
