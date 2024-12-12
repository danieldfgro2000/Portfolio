import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  urlLauncher(String imagePath, String url) {
    return IconButton(
      icon: SvgPicture.asset(imagePath, width: 35),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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

    var heightDevice = MediaQuery.of(context).size.height;
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
                backgroundImage: AssetImage("assets/images/dan.jpg"),
              ),
            ),
            const SizedBox(height: 15),
            const SansBold("Daniel Muncaciu", 30),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                  "assets/images/instagram.svg",
                  "https://github.com/DanielMuncaciu",
                ),
                urlLauncher(
                  "assets/images/github.svg",
                  "https://github.com/danieldfgro2000",
                ),
                urlLauncher(
                  "assets/images/twitter.svg",
                  "https://twitter.com/DanMuncaciu",
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Row(children: [
          Spacer(
            flex: 3,
          ),
          TabsWeb(title: "Home", route: '/'),
          Spacer(),
          TabsWeb(title: "Works", route: '/works'),
          Spacer(),
          TabsWeb(title: "About", route: '/about'),
          Spacer(),
          TabsWeb(title: "Contact", route: '/contact'),
          Spacer(),
        ]),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(size: 25, color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold("About me", 40),
                    const SizedBox(height: 15),
                    const Sans(
                        "Hello! I'm Daniel Muncaciu, I specialize in flutter development", 15),
                    const Sans("I strive to ensure astounding performance with state of", 15),
                    const Sans("the art security for Android iOS, Web, Mac, Linux and Windows", 15),
                    const SizedBox(height: 10),
                    tealContainer("Firebase", Colors.amber, null),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        tealContainer("Flutter", Colors.blue, null),
                        const SizedBox(width: 10),
                        tealContainer("Android", Colors.blue, null),
                        const SizedBox(width: 10),
                        tealContainer("iOS", Colors.blue, null),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        tealContainer("Django", Colors.blue, Colors.yellow),
                        const SizedBox(width: 10),
                        tealContainer("Python", Colors.blue, Colors.yellow),
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
          )
        ],
      ),
    );
  }
}
