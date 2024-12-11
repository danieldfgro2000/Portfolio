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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Portfolio"),
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
          child: ListView(),
        ),
      ),
    );
  }
}
