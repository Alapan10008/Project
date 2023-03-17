import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController countryController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  final _pinPutController = TextEditingController();


  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:PreferredSize(
        preferredSize: Size.fromHeight(80.0),

        child:AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Color.fromARGB(255, 241, 142, 59),
                      Color.fromARGB(255, 220, 58, 1),])),
          ),
          title:
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 10, 3),
            child: const
            Text("Start winning"),
          ),
        ),

      ),

      body:
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ClipPath(
          clipper: Customshape(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(25, 30, 25, 20),
            padding: EdgeInsets.all(1),
            color: const Color.fromARGB(234, 206, 205, 205).withOpacity(0.2),
            child:
            Column(
              children: [
                Container(
                    alignment:Alignment.topLeft,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.fromLTRB(20, 20, 25, 1),
                    child:Text("Enter your mobile number",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),

                Container(
                  height: 55,
                  margin: EdgeInsets.fromLTRB(10, 8, 10, 1),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        width: 50,
                        child:
                        TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Color.fromARGB(255, 255, 255,
                              255)),
                          decoration: InputDecoration(
                            hintText: "+91",
                            hintStyle: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 255, 255,
                                255)),
                            border:
                            OutlineInputBorder(

                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                            ),

                            filled: true,
                            fillColor: Color.fromARGB(184, 28, 28, 28),
                          ),
                        ),
                      ),


                      Expanded(
                          child:
                          TextField(
                            controller: phonenumberController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "XXXXXXXXXX",
                              border:
                              OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                              ),

                              filled: true,
                              fillColor: Color.fromARGB(98, 255, 255, 255),
                            ),
                          ),
                      )
                    ],
                  ),
                ),
            Container(
               margin: EdgeInsets.fromLTRB(20, 1, 10, 1),
               padding:EdgeInsets.fromLTRB(20, 1, 10, 1),
                alignment: Alignment.topRight,
                child: TextButton(onPressed: (){}, child: Text("Request OTP",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 220, 58, 1),decoration: TextDecoration.underline,),))),
            Container(

              child:
              PinCodeFields(
                length: 6,
                margin: EdgeInsets.all(1),
                padding: EdgeInsets.all(1),
                fieldBorderStyle: FieldBorderStyle.square,
                responsive: false,
                fieldHeight:40.0,
                fieldWidth: 40.0,
                borderWidth:1.0,
                // activeBorderColor:  Color.fromARGB(255, 220, 58, 1),
                // activeBackgroundColor:  Color.fromARGB(255, 220, 58, 1),
                borderRadius: BorderRadius.circular(10.0),
                keyboardType: TextInputType.number,
                autoHideKeyboard: false,
                fieldBackgroundColor: Colors.black12,
                borderColor: Colors.black38,
                textStyle: TextStyle(
                  fontSize: 7.0,
                  fontWeight: FontWeight.bold,
                ),
                onComplete: (output) {
                  // Your logic with pin code
                  print(output);
                },
              ),
            ),
             Container(
               margin: EdgeInsets.all(10),
               alignment: Alignment.topRight,
               child: IconButton(
                 iconSize: MediaQuery.of(context).size.width*0.15,
                  onPressed: (){},
                 icon: Icon(Icons.arrow_circle_right_rounded),
                 color:  Color.fromARGB(255, 220, 58, 1),
                 style: IconButton.styleFrom(
                   foregroundColor: Color.fromARGB(255, 252, 252, 252),
                 ),),
             ),

            ]
        ),
        ) ,
          

    ),
      ),
    );

  }
}
class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, (height*0.5)-20);
    path.lineTo(width, height*0.6);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


