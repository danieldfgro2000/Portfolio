import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

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
        endDrawer: const DrawerMobile(),
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
