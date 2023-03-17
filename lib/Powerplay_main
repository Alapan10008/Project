import 'package:flutter/material.dart';
import 'package:power_play/payercard_powerplay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Choose your Powerplayer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "VC gets",
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 69, 69), fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' 1.5X',
                        style:
                            TextStyle(color: Color.fromARGB(255, 242, 60, 8))),
                    TextSpan(
                      text: ' points',
                      style: TextStyle(color: Color.fromARGB(255, 69, 69, 69)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Userdatacard(val: 0),
            Userdatacard(val: 1),
            Userdatacard(val: 4),
            Userdatacard(val: 3),
            Userdatacard(val: 2),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, height * 0.02),
              height: width * 0.1,
              width: width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 54, 54, 54),
                    Color.fromARGB(255, 73, 73, 73)
                  ])),
              child: ElevatedButton(
                child: Text('Clear Selection'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                  disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                  shadowColor: Colors.transparent,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: width * 0.24,
            ),
            Container(
              height: width * 0.12,
              width: width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 46, 176, 14),
                    Color.fromARGB(255, 21, 142, 78)
                  ])),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
                child: Text(
                  'SAVE  TEAM',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
