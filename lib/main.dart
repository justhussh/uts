import 'package:flutter/material.dart';
import 'package:uts/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final PageController pageController = PageController(initialPage: 0);

  final List<Widget> pages = [
    MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkAja',
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.qr_code_scanner_rounded,
            size: 35,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Navbar(
                iconData: Icons.home_outlined,
                name: "Home",
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                    pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                    );
                  });
                },
              ),
              Navbar(
                iconData: Icons.history_outlined,
                name: "History",
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 25),
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Navbar(
                iconData: Icons.inbox_outlined,
                name: "Inbox",
              ),
              Navbar(
                iconData: Icons.account_circle_outlined,
                name: "Account",
              ),
            ],
          ),
        ),
        body: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
