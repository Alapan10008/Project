import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _MyColor {
  const _MyColor(this.color);

  final Color color;
}

class Userdatacard extends StatelessWidget {
  const Userdatacard({required this.val, super.key});
  final val;
  static List<_MyColor> myBgColors = <_MyColor>[
    _MyColor(Color(0xFF6E32E3)),
    _MyColor(
      Color(0xFF1A6FE8),
    ),
    _MyColor(
      Color(0xFFF16E03),
    ),
    _MyColor(
      Color(0xFFFC1900),
    ),
    _MyColor(
      Color(0xFFFFFFFF),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 20, 5),
      decoration: BoxDecoration(
        color: myBgColors[val].color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: InkWell(
        onTap: () {
          // setState(() {});
        },
        child: Container(
          height: width * 0.18,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image(
                        image: NetworkImage(
                            "https://cdn.wisden.com/wp-content/uploads/2017/11/GettyImages-689381236-e1517238885876.jpg"),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "V Kohli",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 20,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 235, 227),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        alignment: Alignment.center,
                        child: Text("RCB"),
                      ),
                    ],
                  ),
                  Text(
                    " • Playing XI",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 62, 204, 27)),
                  ),
                  Icon(Icons.sports_baseball_sharp),
                ],
              )),
        ),
      ),
    );
  }
}
