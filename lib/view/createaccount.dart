import 'package:flutter/material.dart';
import 'package:testapp8/view/home.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    var img =
        "https://as1.ftcdn.net/v2/jpg/00/73/08/36/1000_F_73083667_jBCDWeAHl7KiDAlhYjaVd36YOSBRmehM.jpg";
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(img), fit: BoxFit.cover, opacity: 0.7)),
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Enter Your Credentials",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ],
    );
  }

  inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
            decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.2),
                filled: true,
                prefixIcon: Icon(Icons.person))),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.2),
              filled: true,
              prefixIcon: Icon(Icons.person)),
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home_page()));
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Forgot Password"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Do not have an account?"),
        TextButton(onPressed: () {}, child: Text("Sign Up")),
      ],
    );
  }
}
