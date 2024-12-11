import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
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
                backgroundImage: AssetImage('assets/images/dan.JPG'),
              ),
            ),
            const SizedBox(height: 20),
            const SansBold("Daniel Muncaciu", 30),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.black,
                  icon: SvgPicture.asset('assets/images/instagram.svg', width: 35),
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://github.com/DanielMuncaciu'));
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/images/twitter.svg', width: 35),
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://twitter.com/DanMuncaciu'));
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/images/github.svg', width: 35),
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://github.com/danieldfgro2000'));
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
              expandedHeight: 500,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                size: 25,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const Row(
                children: [
                  Spacer(flex: 3),
                  TabsWeb(title: 'Home', route: '/'),
                  Spacer(),
                  TabsWeb(title: "Works", route: '/works'),
                  Spacer(),
                  TabsWeb(title: "Contact", route: '/contact'),
                  Spacer(),
                  TabsWeb(title: "About", route: '/about'),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(),
      ),
    );
  }
}
