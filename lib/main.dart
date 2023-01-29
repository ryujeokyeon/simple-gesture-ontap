import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Rekomendasi Manhwa\nUntukmu",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage('images/a1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print('ini manhwa Cha Gyeol');
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage('images/doha.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print('ini manhwa Ryu Doha');
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                        image: DecorationImage(
                          image: AssetImage('images/gamin.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print('ini manhwa Gamin');
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
