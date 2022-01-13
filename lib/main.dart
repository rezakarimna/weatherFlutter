import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Mountain View",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Clear Sky",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "14" + "\u00B0",
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Max",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "16" + "\u00B0",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Min",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "12" + "\u00B0",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 16,
                        itemBuilder: (BuildContext context, int position) {
                          return Container(
                            height: 50,
                            width: 70,
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: const [
                                  Text(
                                    "Fer , 8pm",
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "12" + "\u00B0",
                                    style: TextStyle(color: Colors.grey, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
