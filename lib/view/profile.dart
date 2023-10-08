import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testapp8/view/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isupload = false;
  bool isfname = false;
  bool islname = false;

  File theimage = File("path");
  @override
  Widget build(BuildContext context) {
    var p_pic =
        "https://c8.alamy.com/comp/2B1AF33/cool-emoji-face-flat-style-icon-design-cartoon-expression-cute-emoticon-character-profile-facial-toy-adorable-and-social-media-theme-vector-illustration-2B1AF33.jpg";

    Future<void> uploadImage_Gallery() async {
      await ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
        theimage = File(value!.path);
        isupload = true;
        setState(() {});
      });
    }

    Future<void> uploadImage_Camera() async {
      await ImagePicker().pickImage(source: ImageSource.camera).then((value) {
        theimage = File(value!.path);
        isupload = true;
        setState(() {});
      });
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: width,
                  color: Colors.teal,
                ),
                (isupload == false)
                    ? CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(p_pic),
                      )
                    : CircleAvatar(
                        radius: 50,
                        backgroundImage: FileImage(theimage),
                      ),
                Positioned(
                  right: 130,
                  bottom: 45,
                  child: PopupMenuButton(
                    child: Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        child: Text("Gallery"),
                        onTap: () {
                          uploadImage_Gallery();
                        },
                      ),
                      PopupMenuItem(
                        child: Text("Camera"),
                        onTap: () {
                          uploadImage_Camera();
                        },
                      ),
                      PopupMenuItem(
                        child: Text("Remove"),
                        onTap: () {
                          isupload = false;
                          setState(() {});
                        },
                      )
                    ],
                    onSelected: (value) {
                      setState(() {
                        isupload = true;
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home_page()));
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
