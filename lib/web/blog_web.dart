import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/mobile/blog_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
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
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrollable) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 35, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: const AbelCustom(
                    text: "Welcome to my blog",
                    size: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.asset(
                  "assets/images/blog.jpg",
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 500,
            ),
          ];
        },
        body: ListView(
          children: const [BlogPost(), BlogPost(), BlogPost()],
        ),
      ),
    ));
    ;
  }
}
