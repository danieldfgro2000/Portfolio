import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  var logger = Logger();

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
            // Contact Page
            SizedBox(
              height: heightDevice - 56,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: widthDevice * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                              ),
                              border: Border(
                                right: BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                            child: const SansBold("Hello, I'm", 15),
                          ),
                          const SizedBox(height: 15),
                          const SansBold("Daniel Muncaciu", 55),
                          const Sans("Software Developer", 30),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("daniel.gabriel.muncaciu@gmail.com", 15),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("+40 746 110 844", 15),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("Cluj, Baisoara 88", 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage("assets/images/dan.jpg"),
                    ),
                  ],
                ),
              ),
            ),

            // About Page
            SizedBox(
              height: heightDevice * 0.8,
              width: widthDevice * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/web.jpg",
                    width: widthDevice * 0.5,
                    height: heightDevice * 0.5,
                  ),
                  const Flexible(
                    fit: FlexFit.loose,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SansBold("About me", 30),
                        Sans(
                            "I am a software developer with a passion for creating software that is both"
                            " beautiful and functional. \nI have a strong foundation in programming and"
                            " software development, and I am always looking to learn new technologies "
                            "and improve my skills.\nI am a team player and I enjoy working with "
                            "others to create great software.\n"
                            "I am always looking for new opportunities to grow and develop"
                            " as a software developer.",
                            15),
                        SizedBox(height: 15),
                        Sans("I strive to ensure astounding performance with state of", 15),
                        Sans("the art security for Android, iOS, Web, Mac and Windows", 15),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            ColorBorderContainer(text: "Firebase", firstColor: Colors.amber),
                          ],
                        ),
                        SizedBox(height: 10),
                        Flexible(
                          child: Row(
                            children: [
                              ColorBorderContainer(text: "Flutter", firstColor: Colors.blue),
                              SizedBox(width: 10),
                              ColorBorderContainer(text: "Android", firstColor: Colors.blue),
                              SizedBox(width: 10),
                              ColorBorderContainer(text: "iOS", firstColor: Colors.blue),
                              SizedBox(width: 10),
                              ColorBorderContainer(text: "Windows", firstColor: Colors.blue),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            ColorBorderContainer(
                              text: "Django",
                              firstColor: Colors.blue,
                              secondColor: Colors.yellow,
                            ),
                            SizedBox(width: 10),
                            ColorBorderContainer(
                                text: "Python",
                                firstColor: Colors.blue,
                                secondColor: Colors.yellow),
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Third Page
            SizedBox(
              height: heightDevice * 0.8,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("What I do?", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/images/webL.png",
                        text: "Web development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      AnimatedCard(
                        imagePath: "assets/images/app.png",
                        text: "App development",
                        fit: BoxFit.contain,
                        reverse: false,
                      ),
                      AnimatedCard(
                        imagePath: "assets/images/firebase.png",
                        text: "Backend development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Contact Me Page
            const SizedBox(height: 20),
            const ContactFormWeb()
          ],
        ));
  }
}
