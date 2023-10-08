import 'package:flutter/material.dart';
import 'package:testapp8/view/product_listing_widget.dart';
import 'package:testapp8/view/profile.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  var profile_pic =
      "https://c8.alamy.com/comp/2B1AF33/cool-emoji-face-flat-style-icon-design-cartoon-expression-cute-emoticon-character-profile-facial-toy-adorable-and-social-media-theme-vector-illustration-2B1AF33.jpg";

  var series1 =
      "https://www.firstinsight.com/hs-fs/hubfs/milan-fashion-week-men-street-style.jpg?width=700&name=milan-fashion-week-men-street-style.jpg";
  var series2 =
      "https://images.hindustantimes.com/img/2022/08/25/1600x900/pexels-antoni-shkraba-7081113_1661414759537_1661414794423_1661414794423.jpg";
  var series3 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcJbQzHVPj594P1-Ot-qboz9Cf8e2iUBXyg&usqp=CAU";
  var series4 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLr33dNV0PorIlqrnIAqdjSMA5cIptvPK6ZMplTipNx3C3DsMJ1hQolZXHtmR73zjLDZ0&usqp=CAU";
  var series5 =
      "https://www.rd.com/wp-content/uploads/2021/04/GettyImages-656980184.jpg";

  var category_img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt0PCvA8i_86kxoLVBWs0mUcJ-vweXkTmTlv6LI6XrsgsIiBHWbwxRm6h9aOHGS1Ec8Go&usqp=CAU",
    "https://m.media-amazon.com/images/I/71k+p5uFMWL._AC_UY1100_.jpg",
    "https://m.media-amazon.com/images/I/51K5iQZh5uL._AC_UY1000_.jpg",
    "https://img3.junaroad.com/uiproducts/19944606/pri_175_p-1685933918.jpg",
    "https://i.pinimg.com/736x/b2/b0/30/b2b030784a485fc3e6d255941c1d2160.jpg",
    "https://im.whatshot.in/img/2023/Aug/sneaker-stores-in-bangalorewebp-1-1691655140.jpg"
  ];
  var category_name = [
    "Men's Shirt",
    "Men's bottom",
    "Women's top",
    "Women's bottoms",
    "Women's kurti",
    "Sneakers"
  ];

  Widget series_scrolling(var simg, double wid) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          clipBehavior: Clip.none,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.white,
          elevation: 50,
          child: Container(
            width: wid * 0.9,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.rectangle,
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(simg))),
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Widget category_card(var image, var name) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductListingWidget()));
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: height * 0.4,
              width: width * 0.5,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ),
                  Container(
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "GenZee Fashion",
          style: TextStyle(color: Colors.amber),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.trolley))],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(profile_pic),
                    ),
                    Positioned(right: 110, bottom: -5, child: Text("Name")),
                    Positioned(
                      right: 70,
                      bottom: 8,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        },
                        icon: Icon(Icons.edit_square),
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.workspaces_sharp,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("GenZee Premium Plus")
                ],
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.window,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("All Categories")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.trending_up_rounded,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Trending")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.more_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("More Categories")
                ],
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.language,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Choose Language"),
                ],
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.outbox_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Orders"),
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.trolley,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Cart")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Wishlist")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.account_box,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Account")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.payment,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Payment")
                ],
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Help Center")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Privacy Policy")
                ],
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Legal")
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
                child: Text(
                  "   #Trending",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 252, 194, 3)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    series_scrolling(series1, width),
                    series_scrolling(series2, width),
                    series_scrolling(series3, width),
                    series_scrolling(series4, width),
                    series_scrolling(series5, width),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
                child: Text(
                  "   Categories",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              width: width,
              height: height * 0.5,
              child: GridView.builder(
                  itemCount: category_img.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) =>
                      category_card(category_img[index], category_name[index])),
            ),
          ],
        ),
      ),
    );
  }
}
