import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Portfolio"),
        iconTheme: const IconThemeData(size: 35, color: Colors.black),
      ),
      body: ListView(
        children: [
          // Intro, First Section
          const CircleAvatar(
            radius: 117,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 110,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/dan.JPG"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: const SansBold("Hello I'm", 15),
                    ),
                    const SansBold("Daniel Muncaciu", 40),
                    const SansBold("Flutter Developer", 20),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.phone),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3,
                      children: [
                        Sans("danieldfgro2000@gmail.com", 15),
                        Sans("+40 746 110 844", 15),
                        Sans("Cluj, Baisoara 88", 15),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),

          // About, Second Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SansBold("About me", 35),
                const Sans("Hello! I'm Daniel Muncaciu, I specialize in flutter development", 15),
                const Sans("I strive to ensure astounding performence with state of", 15),
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

          // Works, Third Section
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do", 35),
              AnimatedCard(
                imagePath: 'assets/images/webL.png',
                text: "Web development",
                cardWidth: 300,
              ),
              SizedBox(height: 35),
              AnimatedCard(
                imagePath: 'assets/images/app.png',
                text: 'App development',
                reverse: true,
                cardWidth: 300,
              ),
              SizedBox(height: 35),
              AnimatedCard(
                imagePath: 'assets/images/firebase.png',
                text: 'Backend development',
                cardWidth: 300,
              ),
              SizedBox(height: 35),
            ],
          ),

          // Contact, Fourth Section
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              const SansBold("Contact me", 35),
              TextForm(
                text: "First Name",
                containerWidth: widthDevice * 0.8,
                hint: 'Please type your first name',
              ),
              TextForm(
                text: "Last Name",
                containerWidth: widthDevice * 0.8,
                hint: 'Please type your last name',
              ),
              TextForm(
                text: "Email",
                containerWidth: widthDevice * 0.8,
                hint: 'Please type your email',
              ),
              TextForm(
                text: "Phone",
                containerWidth: widthDevice * 0.8,
                hint: 'Please type your phone number',
              ),
              TextForm(
                text: "Message",
                containerWidth: widthDevice * 0.8,
                hint: 'Please type your message',
                maxLines: 10,
              ),
              MaterialButton(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.blue,
                minWidth: 200,
                height: 50,
                child: const SansBold("Submit", 20),
                onPressed: () {},
              )
            ],
          )
        ],
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
                  icon: SvgPicture.asset(
                    "assets/images/instagram.svg",
                    color: Colors.blue,
                    width: 35,
                  ),
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
                  icon: SvgPicture.asset(
                    "assets/images/github.svg",
                    color: Colors.blue,
                    width: 35,
                  ),
                  onPressed: () async {
                    await launchUrl(Uri.parse("https://github.com/danieldfgro2000"));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
