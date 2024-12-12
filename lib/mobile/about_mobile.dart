import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  Widget tealContainer(String text, Color firstColor, Color? secondColor) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor ?? firstColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: SansBold(text, 15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(size: 35, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dan.JPG"),
                    radius: 250,
                  ),
                ),
              ),
              const TabsMobile(text: "Home", route: "/"),
              const SizedBox(height: 20),
              const TabsMobile(text: "Works", route: "/works"),
              const SizedBox(height: 20),
              const TabsMobile(text: "About", route: "/about"),
              const SizedBox(height: 20),
              const TabsMobile(text: "Contact", route: "/contact"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/images/instagram.svg", width: 35),
                    onPressed: () async {
                      await launchUrl(Uri.parse("https://www.instagram.com/muncaciudaniel"));
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/images/twitter.svg",
                      color: Colors.blue,
                      width: 35,
                    ),
                    onPressed: () async {
                      await launchUrl(Uri.parse("https://twitter.com/DanMuncaciu"));
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset("assets/images/github.svg", width: 35),
                    onPressed: () async {
                      await launchUrl(Uri.parse("https://github.com/danieldfgro2000"));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              // Introduction, First section
              const CircleAvatar(
                radius: 117,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                    radius: 113,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/dan.JPG"),
                    )),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold("About me", 35),
                    const Sans(
                        "Hello! I'm Daniel Muncaciu, I specialize in flutter development", 15),
                    const Sans("I strive to ensure astounding performance with state of", 15),
                    const Sans("the art security for Android, iOS, Web, Mac and Linux", 15),
                    const SizedBox(height: 10),
                    tealContainer("Firebase", Colors.amber, null),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: [
                        tealContainer("Flutter", Colors.blue, null),
                        tealContainer("Android", Colors.blue, null),
                        tealContainer("iOS", Colors.blue, null),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: [
                        tealContainer("Django", Colors.blue, Colors.yellow),
                        tealContainer("Python", Colors.blue, Colors.yellow),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Second section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/images/webL.png",
                    cardWidth: 200,
                  ),
                  SizedBox(height: 30),
                  SansBold("Web Development", 25),
                  SizedBox(height: 10),
                ],
              ),
              const Sans(
                  "I'm here to build your presence online with state of the art web apps", 15),
              const SizedBox(height: 20),

              // App development, Third section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  AnimatedCard(
                    imagePath: "assets/images/app.png",
                    cardWidth: 200,
                    reverse: true,
                  ),
                  SizedBox(height: 30),
                  SansBold("App Development", 20),
                  SizedBox(height: 10),
                ],
              ),
              const Sans(
                  "Do you need a high performance and beautiful app? Don't worry, I got you covered.",
                  15),
              const SizedBox(height: 20),

              // Backend development, Fourth section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  AnimatedCard(
                    imagePath: "assets/images/firebase.png",
                    cardWidth: 200,
                    reverse: true,
                  ),
                  SizedBox(height: 30),
                  SansBold("Back-end Development", 20),
                  SizedBox(height: 10),
                ],
              ),
              const Sans(
                  "Do you want your backend to be highly scalable and secure? I'm here to help you.",
                  15),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
