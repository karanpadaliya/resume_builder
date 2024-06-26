import 'dart:ffi';

import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff674aef),
        title: Text(
          "Personal Details",
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
                        "DOB",
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
                            hintText: "DD/MM/YYYY",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Marital Status",
                              style: TextStyle(
                                color: Color(0xff674aef),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 6),
                            child: Container(
                              child: Text(
                                "Single",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Text(
                                "Married",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Languages Known",
                              style: TextStyle(
                                color: Color(0xff674aef),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 6),
                            child: Container(
                              child: Text(
                                "English",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Text(
                                "Hindi",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Text(
                                "Gujarati",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nationality",
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
                                hintText: "Indian",
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
