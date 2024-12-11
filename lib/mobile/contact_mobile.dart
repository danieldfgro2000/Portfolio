import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 35, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/images/contact_image.jpg', fit: BoxFit.cover),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              const SansBold("Contact me", 35),
              TextForm(
                text: "First Name",
                containerWidth: widthDevice * 0.9,
                hint: 'Please enter your first name',
              ),
              TextForm(
                text: "Last Name",
                containerWidth: widthDevice * 0.9,
                hint: 'Please enter your last name',
              ),
              TextForm(
                text: "Email",
                containerWidth: widthDevice * 0.9,
                hint: 'Please enter your email',
              ),
              TextForm(
                text: "Phone Number",
                containerWidth: widthDevice * 0.9,
                hint: 'Please enter your phone number',
              ),
              TextForm(
                text: "Message",
                containerWidth: widthDevice * 0.9,
                hint: 'Please enter your message',
                maxLines: 5,
              ),
              MaterialButton(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minWidth: 200,
                height: 50,
                color: Colors.blue,
                child: const Sans("Submit", 20),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
