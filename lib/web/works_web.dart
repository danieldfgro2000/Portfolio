import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

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
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 72,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/dan.JPG'),
                ),
              ),
              const SizedBox(height: 20),
              const SansBold("Daniel Muncaciu", 30),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: SvgPicture.asset('assets/images/instagram.svg', width: 35),
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://github.com/DanielMuncaciu'));
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/twitter.svg', width: 35),
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://twitter.com/DanMuncaciu'));
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/github.svg', width: 35),
                    onPressed: () async {
                      await launchUrl(Uri.parse('https://github.com/danieldfgro2000'));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
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
                  title: const Row(
                    children: [
                      Spacer(flex: 3),
                      TabsWeb(title: 'Home', route: '/'),
                      Spacer(),
                      TabsWeb(title: "Works", route: '/works'),
                      Spacer(),
                      TabsWeb(title: "Contact", route: '/contact'),
                      Spacer(),
                      TabsWeb(title: "Blog", route: '/blog'),
                      Spacer(),
                      TabsWeb(title: "About", route: '/about'),
                      Spacer(),
                    ],
                  ),
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
