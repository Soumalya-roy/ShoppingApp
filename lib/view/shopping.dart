import 'package:flutter/material.dart';
import 'package:testapp8/view/createaccount.dart';
import 'package:testapp8/view/getstarted.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var img =
        "https://i.pinimg.com/1200x/9a/5b/d2/9a5bd2641c78052e056d5e9d0dfa6073.jpg";

    return Scaffold(
        body: Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.hardEdge,
      children: <Widget>[
        Card(
          elevation: 20,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(img), opacity: 0.8, fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: height * 0.45,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              //borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              " Welcome to the \n World of Shopping",
              softWrap: true,
              style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
            ),
          ),
        ),
        Positioned(
          top: height * 0.60,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              //borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              "  Style is way to say \n  who you are without \n  auctually speaking",
              softWrap: true,
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87),
            ),
          ),
        ),
        Positioned(
          bottom: height * 0.15,
          left: width * 0.335,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetStarted()));
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.black),
              )),
        ),
        Positioned(
          bottom: height * 0.06,
          left: width * 0.3,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            },
            child: Text(
              "Create account",
              style:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.transparent.withOpacity(0.2),
                ),
                side:
                    MaterialStateProperty.all(BorderSide(color: Colors.white))),
          ),
        ),
      ],
    ));
  }
}
