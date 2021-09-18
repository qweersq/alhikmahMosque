import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:masjidmobile/data/resources/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Masjid Al-Hikmah",
          style: TextStyle(
              fontFamily: 'MuseoModerno',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: Offset.fromDirection(125.15),
                ),
              ]),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            color: Colors.blue,
            child: const Text("Menu"),
          )
        ]),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.colorPrimaryLight,
              AppColors.colorPrimaryDark,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Stack(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Next Prayer",
                        style: TextStyle(
                          fontFamily: 'MuseoModerno',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "6j 11m 20d",
                        style: TextStyle(
                          fontFamily: 'MuseoModerno',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: const [
                        Text(
                          "Subuh",
                          style: TextStyle(
                            fontFamily: 'MuseoModerno',
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "04.55",
                          style: TextStyle(
                              fontFamily: 'MuseoModerno',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black26,
                                  blurRadius: 20,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 75),
                    child: Row(
                      children: const [
                        Text(
                          "27 Muharram 1443H",
                          style: TextStyle(
                            fontFamily: 'MuseoModerno',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Center(
                child: Container(
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(),
                          const Text("Rp.2.000.000"),
                        ],
                      ),
                      Column(
                        children: [
                          Row(),
                          const Text("Rp.2.000.000"),
                        ],
                      ),
                      Column(
                        children: [
                          Row(),
                          const Text("Rp.2.000.000"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/il_masjid.png'),
                      alignment: Alignment.center,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    height: screenHeight * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
