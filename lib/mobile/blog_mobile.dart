import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  // void article() async {
  //   await FirebaseFirestore.instance.collection("articles").get().then((querySnapshot) {
  //     querySnapshot.docs.forEach((element) {});
  //   });
  // }

  // void streamArticle() async {
  //   await for ( var snapshot in FirebaseFirestore.instance.collection("articles").snapshots()) {
  //     for (var title in snapshot.docs) {
  //       print(title.data()['title']);
  //     }
  //   }
  // }

  List title = ["Who is Dash?", "What is Flutter?", "What is Dart?"];
  List body = [
    "Dash is the Flutter mascot, a blue and white bird with a yellow beak and feet",
    "Flutter is a UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase",
    "Dart is the programming language used to build Flutter applications",
  ];

  @override
  void initState() {
    super.initState();
    var logger = Logger();
    logger.d("BlogMobile");
    // article();
    // streamArticle();
  }

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
                    centerTitle: true,
                    title: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: const AbelCustom(
                        text: "Welcome to my blog",
                        size: 25,
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
                  expandedHeight: 400,
                ),
              ];
            },
            body: ListView()
            // StreamBuilder<QuerySnapshot>(
            //     stream: FirebaseFirestore.instance.collection("articles").snapshots(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         return ListView.builder(
            //           itemCount: snapshot.data!.docs.length,
            //           itemBuilder: (context, index) {
            //             final DocumentSnapshot document = snapshot.data!.docs[index];
            //             return BlogPost(
            //               title: document['title'],
            //               body: document['body'],
            //             );
            //           },
            //           // children: const [
            //           //   BlogPost(),
            //           //   BlogPost(),
            //           //   BlogPost(),
            //           // ],
            //         );
            //       }
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }),
            ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  final String title;
  final String body;

  const BlogPost({super.key, required this.title, required this.body});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
          style: BorderStyle.solid,
          width: 1,
          color: Colors.black,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: AbelCustom(
                    text: widget.title,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        expand = !expand;
                      });
                    },
                    icon: const Icon(Icons.arrow_drop_down_circle_outlined)),
              ],
            ),
            const SizedBox(height: 10),
            // search online for flutter mascot dash, retrieve the text
            Text(
              widget.body,
              style: GoogleFonts.openSans(fontSize: 15),
              maxLines: expand ? null : 3,
              overflow: expand ? null : TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
