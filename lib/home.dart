import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://cdn.linkaja.com/website/posts/May2022/1653372317-WEB%20BANNER%20794x366%20(50).jpg',
  'https://www.astronauts.id/blog/wp-content/uploads/2022/10/Belanja-Hemat-di-Astro-Pakai-LinkAja-Langsung-Dapat-Cashback-Spesial.jpg',
  'https://cdn.linkaja.com/website/posts/March2022/1648723321-WEB%20BANNER%20794x366%20-%202022-03-31T173852.731.jpg',
  'https://cdn.linkaja.com/website/posts/March2023/1678099933-HEADER%20ARTICLE%20592X342.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 234, 234, 234),
        child: ListView(
          padding: EdgeInsets.only(top: 60),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/640px-LinkAja.svg.png',
                    height: 46,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.percent,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Tindakan saat tombol notifikasi ditekan
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 212, 38, 26),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 25),
                                child: Text(
                                  "Hi, ABDULLAH AZZAM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 10, top: 20, bottom: 10),
                                child: Container(
                                  height: 95,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin:
                                            EdgeInsets.only(left: 12, top: 25),
                                        child: Text(
                                          'Your Balance',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 71, 71, 71)),
                                        ),
                                      ),
                                      Row(children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              EdgeInsets.only(left: 12, top: 7),
                                          child: Text(
                                            'Rp 146.274,',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 5, top: 5),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: Colors.red,
                                          ),
                                        )
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 20, top: 20, bottom: 10),
                                child: Container(
                                  height: 95,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin:
                                            EdgeInsets.only(left: 12, top: 25),
                                        child: Text(
                                          'Bonus Balance',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 71, 71, 71)),
                                        ),
                                      ),
                                      Row(children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              EdgeInsets.only(left: 12, top: 7),
                                          child: Text(
                                            'Rp 0,',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 5, top: 5),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: Colors.red,
                                          ),
                                        )
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.add_card_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'TopUp',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 16, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.account_balance_wallet_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Send Money',
                                      style: TextStyle(
                                          fontSize: 12.5, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 16, right: 10, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.confirmation_number_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Ticket Code',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.apps_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 2.5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'See All',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.speaker_phone_sharp,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Pulsa/Data',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.electric_bolt_rounded,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Electricity',
                                      style: TextStyle(
                                          fontSize: 12.5, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.health_and_safety_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('BPJS',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(Icons.gamepad_rounded,
                                          size: 40)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Games',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 100,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.connected_tv,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Cable TV',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.water_drop,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'PDAM',
                                      style: TextStyle(
                                          fontSize: 12.5, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.credit_card,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('E-Money',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 5, right: 20, top: 10, bottom: 10),
                            child: Container(
                              height: 95,
                              width: 160,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.more_horiz_rounded,
                                        size: 40,
                                      )),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'More',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 300),
                    height: 500,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const CarouselWithIndicatorDemo(),
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

class Navbar extends StatelessWidget {
  final IconData iconData;
  final String name;
  final void Function()? onTap;

  const Navbar({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: Colors.black,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetList extends StatelessWidget {
  final IconData iconData;
  final String name;
  const WidgetList({
    super.key,
    required this.iconData,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              iconData,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            onPressed: () {
              // Tindakan saat tombol ditekan
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class BoxWhite extends StatelessWidget {
  final String title;
  final String balance;

  const BoxWhite({
    super.key,
    required this.title,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 90,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.redAccent,
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              title,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  balance,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.8,
                child: Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                      size: 12,
                    ),
                    onPressed: () {
                      // Tindakan saat tombol notifikasi ditekan
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
