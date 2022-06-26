import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 60, right: 47, top: 70),
            child: Image(
              image: AssetImage('images/im2.png'),
              fit: BoxFit.cover,
              height: 360,
              width: 270,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 100, right: 100),
            child: Text(
              "Let's Start!",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 22, right: 22),
            child: TextFormField(
              controller: email,
              cursorColor: Colors.black12,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Colors.black.withOpacity(0.07),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.black.withOpacity(0.07),
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.black.withOpacity(0.07),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 22, right: 22),
            child: TextFormField(
              controller: password,
              obscureText: true,
              cursorColor: Colors.black12,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Colors.black.withOpacity(0.07),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.black.withOpacity(0.07),
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.black.withOpacity(0.07),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 118, right: 118),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: HexColor('#2C2B47'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const SizedBox(
                  height: 55,
                  width: 135,
                  child: Center(
                      child: Text(
                    "Sign in ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80),
            child: Row(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign up",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
