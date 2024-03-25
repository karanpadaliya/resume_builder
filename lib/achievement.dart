import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff674aef),
        title: Text(
          "Achievements",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xff674aef),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 280,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4f4f4).withOpacity(0.8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Enter Achievements",
                        style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 1,
                          fontSize: 18,
                          color: Color(0xff674aef),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          // height: 160,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13, left: 13, right: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "C Programming Certificate",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Icon(
                            Icons.delete,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          // height: 160,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13, left: 13, right: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "CSI Member",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Icon(
                            Icons.delete,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xff674aef),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
