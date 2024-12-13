import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
        endDrawer: const DrawerMobile(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              // Introduction, First section
              CircleAvatar(
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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 35),
                    Sans("Hello! I'm Daniel Muncaciu, I specialize in flutter development", 15),
                    Sans("I strive to ensure astounding performance with state of", 15),
                    Sans("the art security for Android, iOS, Web, Mac and Linux", 15),
                    SizedBox(height: 10),
                    ColorBorderContainer(text: "Firebase", firstColor: Colors.amber),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: [
                        ColorBorderContainer(text: "Flutter", firstColor: Colors.blue),
                        ColorBorderContainer(text: "Android", firstColor: Colors.blue),
                        ColorBorderContainer(text: "iOS", firstColor: Colors.blue),
                      ],
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 7,
                      runSpacing: 7,
                      children: [
                        ColorBorderContainer(
                          text: "Django",
                          firstColor: Colors.blue,
                          secondColor: Colors.yellow,
                        ),
                        ColorBorderContainer(
                          text: "Python",
                          firstColor: Colors.blue,
                          secondColor: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 40),

              // Second section
              Column(
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
              Sans("I'm here to build your presence online with state of the art web apps", 15),
              SizedBox(height: 20),

              // App development, Third section
              Column(
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
              Sans(
                  "Do you need a high performance and beautiful app? Don't worry, I got you covered.",
                  15),
              SizedBox(height: 20),

              // Backend development, Fourth section
              Column(
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
              Sans(
                  "Do you want your backend to be highly scalable and secure? I'm here to help you.",
                  15),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
