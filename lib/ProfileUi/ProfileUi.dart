import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenProfileUi extends StatelessWidget {
  ScreenProfileUi({Key? key}) : super(key: key);
  final List<String> categoty = [
    "Privacy ",
    "Purchase History",
    "Help & Support",
    "Settings",
    'Invite a friend',
    "Logout"
  ];
  final List IconData = [
    Icon(Icons.privacy_tip),
    Icon(Icons.history),
    Icon(Icons.help),
    Icon(Icons.settings),
    Icon(Icons.person_add_alt),
    Icon(Icons.logout),
  ];
  final List trails = [
    Icon(Icons.arrow_forward_ios),
    Icon(Icons.arrow_forward_ios),
    Icon(Icons.arrow_forward_ios),
    Icon(Icons.arrow_forward_ios),
    Icon(Icons.arrow_forward_ios),
    Icon(Icons.arrow_forward_ios),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black26,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.menu,
                color: Colors.black26,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              spreadRadius: 2)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        child: SizedBox(
                            width: 120,
                            height: 160,
                            child: ClipOval(
                              child: Image.asset(
                                "assets/Images/ikb.jpg",
                              ),
                            )),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: SizedBox(
                        width: 120,
                        height: 160,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Images/fb.png",
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 28,
                    child: SizedBox(
                        width: 120,
                        height: 160,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Images/google.jpg",
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: SizedBox(
                        width: 120,
                        height: 160,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Images/twit.png",
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: SizedBox(
                        width: 120,
                        height: 160,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Images/linked.webp",
                          ),
                        )),
                  )
                ],
              )),
              SizedBox(height: 15),
              Text(
                "Indrajith K Babu",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "@amIKB",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Mobile App Developer and Open ",
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.center),
              Text(
                " source enthusiastic",
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ],
              ),
            ),
            Expanded(
                child: Container(
                  color: Colors.white,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding:   EdgeInsets.fromLTRB(25,7,25,7),
                  child: Card(
                    color: Colors.grey[200],
                     shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
                    child: ListTile(
                      title: Text(categoty[index]),
                      leading: IconData[index],
                      trailing: trails[index],
                    ),
                  ),
                ),
                itemCount: categoty.length,
              ),
            )),
          ],
        ));
  }
}
