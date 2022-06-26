import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int currentIndex = 0;
  var search = TextEditingController();
  List titles = ['All Courses', 'Identity', 'UI/UX', 'Branding'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 65, right: 22),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Image(image: AssetImage('images/Menu.png')),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child:
                          const Image(image: AssetImage('images/Avatar.png')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: search,
                    cursorColor: Colors.black12,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
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
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            padding: const EdgeInsets.only(left: 22),
            height: 35,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        if (index == 0) {
                          setState(() {
                            index = 0;
                          });
                        }
                        if (index == 1) {
                          setState(() {
                            index = 1;
                          });
                        }
                        if (index == 2) {
                          setState(() {
                            index = 2;
                          });
                        }
                        if (index == 3) {
                          setState(() {
                            index = 3;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == index
                                ? HexColor('#2C2B47')
                                : Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Center(
                            child: Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: index == index ? Colors.white : Colors.grey,
                          ),
                        )),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 13,
                    ),
                itemCount: 4),
          ),
          SizedBox(
            height: 521,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
                child: Column(
                  children: [
                    Container(
                      width: 333,
                      height: 186,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/b1.png'),
                        fit: BoxFit.cover,
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Image(image: AssetImage('images/messenger.png')),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Logo Design: From Concept to\n Presentation",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "20 videos",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: 333,
                      height: 186,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/b2.png'),
                        fit: BoxFit.cover,
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 105,
                          ),
                          Text(
                            "Brand Design and Packaging",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "14 videos",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Image(
                      image: AssetImage('images/b3.png'),
                      fit: BoxFit.cover,
                      width: 333,
                      height: 186,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('images/01.png'),
                color: currentIndex == 0
                    ? HexColor('#2C2B47')
                    : Colors.grey.shade500,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('images/02.png'),
                color: currentIndex == 1
                    ? HexColor('#2C2B47')
                    : Colors.grey.shade500,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: const AssetImage('images/03.png'),
                color: currentIndex == 2
                    ? HexColor('#2C2B47')
                    : Colors.grey.shade500,
              ),
              label: ''),
        ],
      ),
    );
  }
}
