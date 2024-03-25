import 'package:flutter/material.dart';

class Eduction extends StatefulWidget {
  const Eduction({super.key});

  @override
  State<Eduction> createState() => _EductionState();
}

class _EductionState extends State<Eduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff674aef),
        title: Text(
          "Eduction",
          style: TextStyle(color: Colors.white),
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
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 630,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xfff4f4f4).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course/Degree",
                        style: TextStyle(
                          color: Color(0xff674aef),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 0, right: 15, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "B. Tech Information Technology",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "School/College/Institute",
                            style: TextStyle(
                              color: Color(0xff674aef),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 13, left: 0, right: 15, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                hintText: "Marwadi University",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Percentage",
                            style: TextStyle(
                              color: Color(0xff674aef),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 13, left: 0, right: 15, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                hintText: "70% (or) 7.0 CGPA",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Year Of Pass",
                            style: TextStyle(
                              color: Color(0xff674aef),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 13, left: 0, right: 15, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                hintText: "2019",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 350 / 3),
                        child: Column(
                          children: [
                            FilledButton(
                              onPressed: () {},
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll(Color(0xff674aef)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
