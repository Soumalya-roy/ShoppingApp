import 'package:flutter/material.dart';
import 'package:testapp8/view/createaccount.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var pageController = PageController(initialPage: 0);
  var img = [
    "https://i.pinimg.com/736x/2e/e6/8f/2ee68fa9520aa00c5e418ba29f0fd3ac.jpg",
    "https://castawaymodelmanagement.com/wp-content/uploads/2020/11/Castaway-Model-Management-with-motel-rocks-in-Bali-2.jpg",
    "https://lavintage.com/cdn/shop/articles/yasamine-june-qRqFJiJ4_o8-unsplash_1024x1024.jpg?v=1664463700",
    "https://i.pinimg.com/736x/64/a8/eb/64a8eb93ce12223b803e701d6aa01b01.jpg"
  ];

  var txt = [
    "No need to sacrifice style for comfort when you have casual fashion.",
    "Women are always a style statement",
    "You can't buy happyness but you can buy vintage and that's pretty close",
    "In order to be irreplaceable, one must be different"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var i = 0;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.hardEdge,
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: img.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => Stack(
              alignment: Alignment.centerLeft,
              children: [
                Card(
                  elevation: 20,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(img[index]), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.45,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      //borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      txt[index],
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: width * 0.45,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: (i % 4 == index) ? 5 : 3,
                        backgroundColor:
                            ((i++) % 4 == index) ? Colors.black : Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: (i % 4 == index) ? 5 : 3,
                        backgroundColor:
                            ((i++) % 4 == index) ? Colors.black : Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: (i % 4 == index) ? 5 : 3,
                        backgroundColor:
                            ((i++) % 4 == index) ? Colors.black : Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: (i % 4 == index) ? 5 : 3,
                        backgroundColor:
                            ((i++) % 4 == index) ? Colors.black : Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        print("previous ${index}");
                        pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.slowMiddle);
                        setState(() {});
                      },
                      child: Text(
                        "< Prev",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.transparent.withOpacity(0.2),
                          ),
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white))),
                    )),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        (index != 3)
                            ? pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.slowMiddle)
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Account()));
                        setState(() {});
                      },
                      child: Text(
                        "Next >",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.transparent.withOpacity(0.2),
                          ),
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white))),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
