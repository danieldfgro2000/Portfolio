import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 800;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: const DrawerMobile(),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrollable) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(size: 35, color: Colors.black),
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: !isWeb,
                    title: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: isWeb ? 7 : 4),
                      child: AbelCustom(
                        text: "Welcome to my blog",
                        size: isWeb ? 30 : 24,
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
                  expandedHeight: isWeb ? 500 : 400,
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
  final bool isWeb;

  const BlogPost({super.key, required this.title, required this.body, required this.isWeb});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isWeb
          ? const EdgeInsets.only(left: 70, right: 70, top: 40)
          : const EdgeInsets.only(left: 10, right: 10, top: 20),
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
