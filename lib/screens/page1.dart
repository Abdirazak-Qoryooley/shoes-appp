import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoes_app/data.dart';
import 'package:shoes_app/screens/item.3.dart';
import 'package:shoes_app/screens/item1.dart';
import 'package:shoes_app/screens/item2.dart';
import 'package:shoes_app/screens/view_all_items.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0FFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        actions: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Shoes App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.deepPurple,
              ),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.deepPurple,
              ),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.deepPurple,
              ),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 20,
              // color: Colors.red,
              // child: Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: Row(
              //     children: [
              //       IconButton(
              //         icon: Icon(Icons.menu),
              //         onPressed: () {
              //           Scaffold.of(context).openDrawer();
              //         },
              //       ),
              //       Spacer(),
              //       Icon(Icons.notifications)
              //     ],
              //   ),
              // ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                  color: Color(0xff0FBFBFB),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'FIND YOUR SHOES', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'A workhorse to built',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'help power you',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 10),
                    width: 200,
                    height: 200,
                    // decoration: BoxDecoration(color: Colors.red),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/nike.png',
                          fit: BoxFit.cover,
                          width: 200,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Align(
                // alignment: Alignment.centerLeft,
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.red,
                    controller: _tabController,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.deepPurple,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        child: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Center(
                                  child: Image.asset(
                                'images/all.png',
                                width: 46,
                              ))
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Center(
                                  child: Image.asset(
                                'images/mans.png',
                                width: 46,
                              ))
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Center(
                                child: Image.asset(
                                  'images/women.png',
                                  width: 46,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    'All items',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => view()));
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 199,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => item1())));
                            },
                            child: Container(
                              width: 190,
                              height: 300,
                              margin: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff0FBFBFB),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(getadata[i].image),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 109.0),
                                          child: Text(
                                            getadata[i].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          getadata[i].price,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.lightBlue),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      }),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => item2())));
                            },
                            child: Container(
                              width: 190,
                              height: 300,
                              margin: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff0FBFBFB),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(get2[i].image),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 109.0),
                                          child: Text(
                                            get2[i].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          get2[i].price,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.lightBlue),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                      }),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => item3())));
                          },
                          child: Container(
                            width: 190,
                            height: 200,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                                color: Color(0xff0FBFBFB),

                                // boxShadow: [
                                //   BoxShadow(
                                //       color: Colors.grey,
                                //       spreadRadius: 7,
                                //       blurRadius: 1,
                                //       offset: Offset(1, 2))
                                // ],
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(getanother[i].image),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 109.0),
                                        child: Text(
                                          getanother[i].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Text(
                                        getanother[i].price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.lightBlue),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
