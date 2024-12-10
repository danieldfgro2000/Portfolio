import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isHover
            ? GoogleFonts.oswald(
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
            : GoogleFonts.oswald(
                color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
        child: Text(
          widget.title,
          // style: GoogleFonts.oswald(color: Colors.black, fontSize: 24),
        ),
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

class TextForm extends StatelessWidget {
  final double width;
  final String heading;
  final String hint;
  final int maxLines;

  const TextForm(
      {required this.width,
      required this.heading,
      required this.hint,
      this.maxLines = 1,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 15),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
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
              hintText: hint,
              hintStyle: GoogleFonts.poppins(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
