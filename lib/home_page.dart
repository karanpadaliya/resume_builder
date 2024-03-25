import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder/util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xff674aef),
        systemNavigationBarColor: Color(0xff674aef),
        systemNavigationBarDividerColor: Color(0xff674aef),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff674aef),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Karan Padaliya",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              accountEmail: Text("karanpadaliya@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "KP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff674aef),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff674aef),
              ),
            ),
            Expanded(
              child: NavigationDrawer(
                children: buildOption.map((e) {
                  return SingleChildScrollView(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(6),
                      // title: Text("Contact us"),
                      horizontalTitleGap: 10,
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(
                        e["name"],
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, e["page"] ?? "");
                      },
                      leading: ImageIcon(
                        AssetImage("images/icons/${e["icon"]}"),
                        size: 30,
                        color:
                            Colors.black, // Change the color of the icon here
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.call_rounded),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.feedback_rounded,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Share Feedback",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/icons/open_box.png",
              width: 70,
            ),
            Container(
              child: Text(
                "No Resume + Create New Resume",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color(0xff674aef),
          size: 30,
        ),
      ),
    );
  }
}
