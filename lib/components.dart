import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  final String route;

  const TabsWeb({super.key, required this.title, required this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isHover
              ? GoogleFonts.roboto(
                  shadows: [
                      const Shadow(
                        color: Colors.black,
                        offset: Offset(0, -3),
                      )
                    ],
                  color: Colors.transparent,
                  fontSize: 26,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.black)
              : GoogleFonts.roboto(
                  color: Colors.black, fontSize: 20, decoration: TextDecoration.none),
          child: Text(
            widget.title,
            // style: GoogleFonts.oswald(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(flex: 3),
        TabsWeb(title: 'Home', route: '/'),
        Spacer(),
        TabsWeb(title: "Works", route: '/works'),
        Spacer(),
        TabsWeb(title: "Contact", route: '/contact'),
        Spacer(),
        TabsWeb(title: "Blog", route: '/blog'),
        Spacer(),
        TabsWeb(title: "About", route: '/about'),
        Spacer(),
      ],
    );
  }
}

class TabsMobile extends StatefulWidget {
  final String text;
  final String route;

  const TabsMobile({super.key, required this.text, required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20,
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minWidth: 200,
        height: 50,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

urlLauncher(String imagePath, String url) {
  return IconButton(
    icon: SvgPicture.asset(imagePath, width: 35),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}

class DrawersWeb extends StatelessWidget {
  const DrawersWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontWeight;

  const AbelCustom(
      {super.key, required this.text, required this.size, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final double containerWidth;
  final String text;
  final String hint;
  final int maxLines;
  final TextEditingController? controller;
  final FormFieldValidator? validator;

  const TextForm({
    required this.containerWidth,
    required this.text,
    required this.hint,
    this.maxLines = 1,
    this.controller,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 15),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            validator: validator,
            controller: controller,
            inputFormatters: [
              FilteringTextInputFormatter.allow((RegExp(r'[a-z A-Z0-9]'))),
            ],
            maxLines: maxLines,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: hint,
              hintStyle: GoogleFonts.poppins(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final String imagePath;
  final String? text;
  final BoxFit? fit;
  final bool? reverse;
  final double? cardWidth;
  final double? cardHeight;

  const AnimatedCard(
      {super.key,
      required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.cardWidth,
      this.cardHeight});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);
    _animation = Tween(
      begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
      end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.blue, width: 2),
        ),
        shadowColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.cardHeight ?? 200,
                width: widget.cardWidth ?? 200,
                fit: widget.fit,
              ),
              const SizedBox(height: 10),
              widget.text != null ? SansBold(widget.text!, 15) : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();
// CollectionReference response = FirebaseFirestore.instance.collection('messages');
//
// Future<void> addResponse(
//   String firstName,
//   String lastName,
//   String email,
//   String phoneNumber,
//   String message,
// ) async {
//   await response
//       .add({
//         'firstName': firstName,
//         'lastName': lastName,
//         'email': email,
//         'phoneNumber': phoneNumber,
//         'message': message,
//       })
//       .then((value) => logger.i('Success'))
//       .catchError((error) => logger.e('Error: $error'));
// }
}

Future dialogError(BuildContext context, String error) {
  return showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            title: SansBold("Message submitted", 20),
          ));
}
