import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
              const TabsMobile(text: "Blog", route: "/blog"),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(size: 35, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('assets/images/works.jpg', fit: BoxFit.cover),
                ),
              )
            ];
          },
          body: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  SansBold("Works", 40),
                  SizedBox(height: 20),
                  AnimatedCard(
                    imagePath: "assets/images/portfolio.png",
                    fit: BoxFit.contain,
                    cardHeight: 150,
                    cardWidth: 300,
                  ),
                  SizedBox(height: 30),
                  SansBold("Portfolio", 20),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Sans(
                      "Deployed on Android, iOS and Web, the portfolio was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the backend.",
                      15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
