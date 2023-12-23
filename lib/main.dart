import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/background.jpg"),
                          fit: BoxFit.cover)), //Background images
                  child: Padding(
                    //Padding from Top left and Right
                    padding: const EdgeInsets.only(top: 80.0, left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              //Circler imageview with images path
                              radius: 40,
                              backgroundImage: AssetImage("images/user.jpg"),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    "Deep singh", //Textview with text ,text color and font
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.red,
                                        fontFamily: "fonts/Poppins-Medium.ttf")),
                                Text("Flutter Dev",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "fonts/Poppins-Regular.ttf"))
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    //Icon images with horizontal i.e; Row form
                                    Icons.shopping_bag,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    //Similar to padding
                                    width: 20,
                                  ),
                                  Text("MCA")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.email,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("deep.singh@gmail.com")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.mobile_friendly,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("9810837765")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_city,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("New Delhi")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_city,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("India")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Created by Deep")
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}