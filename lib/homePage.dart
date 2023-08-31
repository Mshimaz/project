import 'package:espar_assignment_app/widgets/bigCard.dart';
import 'package:espar_assignment_app/widgets/smallCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 47, left: 20, right: 20),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  TabBar(
                    labelColor: Color.fromARGB(255, 47, 29, 208),
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      border: const Border(
                          top: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                          left: BorderSide(color: Colors.grey)),
                      // borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(4, -4),
                        ),
                      ],
                    ),
                    tabs: const [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Cohorts'),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Clubs'),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('SIGs'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("View Drafts button clicked");
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.drafts,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'View Drafts',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Create Cohort button clicked");
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.group_add,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Create Cohort',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Create Event button clicked");
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Create Event',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 1,
            ),
            GestureDetector(
                onTap: () {
                  print("Small post card clicked");
                },
                child: const SmallCard()),
            GestureDetector(
                onTap: () {
                  print("Big post card clicked");
                },
                child: const BigCard()),
            GestureDetector(
                onTap: () {
                  print("Small post card clicked");
                },
                child: const SmallCard()),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {
            if (index == 0) {
              print("Home button clicked");
            }
            if (index == 1) {
              print("Skill button clicked");
            }
            if (index == 2) {
              print("Add button clicked");
            }
            if (index == 3) {
              print("Community button clicked");
            }
            if (index == 4) {
              print("Notification button clicked");
            }
          },
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_outline,
                ),
                label: 'Skill'),
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 47, 29, 208),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.circle_outlined,
                ),
                label: 'Community'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_outlined,
                ),
                label: 'Notification'),
          ],
        ),
      ),
    );
  }
}
