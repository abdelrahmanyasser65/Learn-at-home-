import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Image(
              image: AssetImage('images/im3.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 70, right: 70),
            child: Text(
              "Get unlimited access!",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 22, top: 30),
                          height: 140,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.09),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "\$11.99",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                "\$11.99 per month",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$143.99 per year",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: HexColor('#ADDEE6'),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Text(
                            "Monthly",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 30),
                          height: 140,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.09),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "\$4.00",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                "\$4.00 per month",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$59.99 per year",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: HexColor('#F6ADB6'),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Text(
                            "Yearly",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 90),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: HexColor('#2C2B47'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {},
              child: const SizedBox(
                height: 55,
                width: 195,
                child: Center(
                  child: Text(
                    "Go Premium",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
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
