import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'WhatsApp',
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 25,
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 10,
                ),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Device",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Payments",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 6,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  //tab 1
                  Container(
                    width: 25,
                    child: const Tab(
                      icon: Icon(
                        Icons.groups,
                        size: 30,
                      ),
                    ),
                  ),
                  //tab 2
                  Container(
                    width: 80,
                    child: Row(
                      children: [
                        const Text("CHATS"),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "10",
                            style: TextStyle(
                              color: Color(0xFF075E55),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //tab 3
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  //tab 4
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
