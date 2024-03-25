import 'package:flutter/material.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({super.key});

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff674aef),
        title: Text(
          "Carrier Objective",
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
                        "Carrier Objective",
                        style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 1,
                          fontSize: 18,
                          color: Color(0xff674aef),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 350,
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 13, right: 10, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Description",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 200,
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
                        "Current Designation (Experienced Candidate)",
                        style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 1,
                          fontSize: 18,
                          color: Color(0xff674aef),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 13, left: 13, right: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Software Engineer",
                        ),
                      ),
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
