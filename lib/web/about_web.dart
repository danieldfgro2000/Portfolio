import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawersWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TabsWebList(),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(size: 25, color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // About me, fist section
          SizedBox(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(height: 15),
                    Sans("Hello! I'm Daniel Muncaciu, I specialize in flutter development", 15),
                    Sans("I strive to ensure astounding performance with state of", 15),
                    Sans("the art security for Android iOS, Web, Mac, Linux and Windows", 15),
                    SizedBox(height: 10),
                    ColorBorderContainer(text: "Firebase", firstColor: Colors.amber),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ColorBorderContainer(
                          text: "Flutter",
                          firstColor: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        ColorBorderContainer(
                          text: "Android",
                          firstColor: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        ColorBorderContainer(
                          text: "iOS",
                          firstColor: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ColorBorderContainer(
                            text: "Django", firstColor: Colors.blue, secondColor: Colors.yellow),
                        SizedBox(width: 10),
                        ColorBorderContainer(
                            text: "Python", firstColor: Colors.blue, secondColor: Colors.yellow),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: heightDevice * 0.2,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: heightDevice * 0.195,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage("assets/images/dan.jpg"),
                  ),
                ),
              ],
            ),
          ),

          // Web development, second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/images/webL.png",
                cardHeight: 250,
                cardWidth: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold("Web Development", 30),
                    SizedBox(height: 15),
                    Sans(
                      "I'm here to build your presence online with state of the art web apps.",
                      15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // App development, third section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold("App Development", 30),
                    SizedBox(height: 15),
                    Sans(
                      "Do you need a high performance, responsive and beautiful app? Don't worry, I've got you covvered.",
                      15,
                    ),
                  ],
                ),
              ),
              const AnimatedCard(
                imagePath: "assets/images/app.png",
                cardWidth: 250,
                cardHeight: 250,
                reverse: true,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),

          // Backend development, fourth section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/images/firebase.png",
                cardWidth: 250,
                cardHeight: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold("Back-end Development", 30),
                    SizedBox(height: 15),
                    Sans(
                      "Do you want your backend to be highly scalable and secure? Let's have a conversation on how I can help you with that.",
                      15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
