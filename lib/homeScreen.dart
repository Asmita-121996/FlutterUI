import 'package:basicflutter/login.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            const Text("Asmita Flutter", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getTitle(),
            _getSubTitle(),
            Row(
              children: [_getLoginBtn(context), _getSignUpBtn()],
            )
          ],
        ),
      ),
    );
  }

  Widget _getTitle() {
    return Container(
        child: Text("Hello Princy !",
            style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 40,
                fontWeight: FontWeight.w800)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
  }

  Widget _getSubTitle() {
    return Container(
        child: Text("Welcome to your Flutter's First Basic Project...",
            style: TextStyle(color: Colors.grey, fontSize: 20)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
  }
}

Widget _getLoginBtn(BuildContext context) {

  return Container(
      child: MaterialButton(
          color: Colors.deepOrangeAccent,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => login()));
          },
          child: Text("Login",
              style: TextStyle(color: Colors.white, fontSize: 20))),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
}

Widget _getSignUpBtn() {
  return Container(
      child: MaterialButton(
          color: Colors.deepOrangeAccent,
          onPressed: () {},
          child: Text("Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 20))),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
}
