import 'package:flutter/material.dart';
import 'package:test_slides/Screens/notifications.dart';
import 'package:test_slides/Screens/skilldev.dart';

import 'Screens/home.dart';
import 'Screens/jobs.dart';
import 'Screens/portfolio.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    PortFolio(),
    SkillDev(),
    Jobs(),
    Notifications(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  minWidth: 3,
                  onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.black : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 13,
                          color: currentTab == 0 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 3,
                  onPressed: () {
                    setState(() {
                      currentScreen = PortFolio();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_copy_sharp,
                        color: currentTab == 1 ? Colors.black : Colors.grey,
                      ),
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          fontSize: 13,
                          color: currentTab == 1 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 3,
                  onPressed: () {
                    setState(() {
                      currentScreen = SkillDev();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bar_chart_sharp,
                        color: currentTab == 2 ? Colors.black : Colors.grey,
                      ),
                      Text(
                        'SkillDev',
                        style: TextStyle(
                          fontSize: 13,
                          color: currentTab == 2 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 3,
                  onPressed: () {
                    setState(() {
                      currentScreen = Jobs();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_repair_service_sharp,
                        color: currentTab == 3 ? Colors.black : Colors.grey,
                      ),
                      Text(
                        'Jobs',
                        style: TextStyle(
                          fontSize: 13,
                          color: currentTab == 3 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 3,
                  onPressed: () {
                    setState(() {
                      currentScreen = Notifications();
                      currentTab = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        color: currentTab == 4 ? Colors.black : Colors.grey,
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 13,
                          color: currentTab == 4 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
