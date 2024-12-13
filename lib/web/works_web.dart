import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: const DrawersWeb(),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 500,
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(
                    size: 25,
                    color: Colors.black,
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/images/works.jpg',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  title: const TabsWebList(),
                )
              ];
            },
            body: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 30),
                    const SansBold("Works", 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const AnimatedCard(
                          imagePath: 'assets/images/portfolio.png',
                          cardWidth: 300,
                          cardHeight: 300,
                        ),
                        SizedBox(
                          width: widthDevice / 3,
                          child: const Column(
                            children: [
                              SansBold("Portfolio", 30),
                              SizedBox(height: 15),
                              Sans(
                                "Deployed on Android, iOS and Web, the portfolio was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the backend.",
                                15,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
