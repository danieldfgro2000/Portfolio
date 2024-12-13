import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: const DrawersWeb(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const TabsWebList(),
          centerTitle: true,
          elevation: 0,
          iconTheme: const IconThemeData(size: 25, color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            // Contact Page
            SizedBox(
              height: heightDevice - 56,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: widthDevice * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                              ),
                              border: Border(
                                right: BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                            child: const SansBold("Hello, I'm", 15),
                          ),
                          const SizedBox(height: 15),
                          const SansBold("Daniel Muncaciu", 55),
                          const Sans("Software Developer", 30),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("daniel.gabriel.muncaciu@gmail.com", 15),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("+40 746 110 844", 15),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(width: 10),
                              Sans("Cluj, Baisoara 88", 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage("assets/images/dan.jpg"),
                    ),
                  ],
                ),
              ),
            ),

            // About Page
            SizedBox(
              height: heightDevice * 0.8,
              width: widthDevice * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/web.jpg",
                    width: widthDevice * 0.5,
                    height: heightDevice * 0.5,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SansBold("About me", 30),
                        const Sans(
                            "I am a software developer with a passion for creating software that is both"
                            " beautiful and functional. \nI have a strong foundation in programming and"
                            " software development, and I am always looking to learn new technologies "
                            "and improve my skills.\nI am a team player and I enjoy working with "
                            "others to create great software.\n"
                            "I am always looking for new opportunities to grow and develop"
                            " as a software developer.",
                            15),
                        const SizedBox(height: 15),
                        const Sans("I strive to ensure astounding performance with state of", 15),
                        const Sans("the art security for Android, iOS, Web, Mac and Windows", 15),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.amber,
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const SansBold("Firebase", 20),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Flexible(
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("Flutter", 20),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("Android", 20),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("iOS", 20),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("Windows", 20),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.blue, Colors.yellow],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("Django", 20),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.blue, Colors.yellow],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const SansBold("Python", 20),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Third Page
            SizedBox(
              height: heightDevice * 0.8,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("What I do?", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/images/webL.png",
                        text: "Web development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      AnimatedCard(
                        imagePath: "assets/images/app.png",
                        text: "App development",
                        fit: BoxFit.contain,
                        reverse: false,
                      ),
                      AnimatedCard(
                        imagePath: "assets/images/firebase.png",
                        text: "Backend development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Contact Me Page
            SizedBox(
              height: heightDevice,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SansBold("Contact Me", 40),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                TextForm(
                                    validator: (text) =>
                                        text.isEmpty ? "Please enter your first name" : null,
                                    controller: _firstNameController,
                                    containerWidth: widthDevice * 0.4,
                                    text: "First name",
                                    hint: "Please enter your first name"),
                                const SizedBox(height: 10),
                                TextForm(
                                  validator: (text) =>
                                      text.isEmpty ? "Please enter your email" : null,
                                  controller: _emailController,
                                  containerWidth: widthDevice * 0.4,
                                  text: "Email",
                                  hint: "Please enter your email",
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextForm(
                                    controller: _lastNameController,
                                    containerWidth: widthDevice * 0.4,
                                    text: "Last name",
                                    hint: "Please enter your last name"),
                                const SizedBox(height: 10),
                                TextForm(
                                  controller: _phoneController,
                                  containerWidth: widthDevice * 0.4,
                                  text: "Phone",
                                  hint: "Please enter your phone",
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        TextForm(
                          validator: (text) => text.isEmpty ? "Please enter a message" : null,
                          controller: _messageController,
                          containerWidth: widthDevice * 0.9,
                          text: "Message",
                          hint: "Please enter your message $widthDevice",
                          maxLines: 5,
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 40,
                            minWidth: 200,
                            color: Colors.blue,
                            child: const Text("Submit"),
                            onPressed: () async {
                              logger.d(_firstNameController.text);
                              if (_formKey.currentState!.validate()) {
                                // await AddDataFirestore().addResponse(
                                //   _firstNameController.text,
                                //   _lastNameController.text,
                                //   _emailController.text,
                                //   _phoneController.text,
                                //   _messageController.text,
                                // );
                              }
                              _formKey.currentState!.reset(); //delete the text from the form
                              dialogError(context, "Message submitted");
                            }),
                        const SizedBox(height: 10),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
