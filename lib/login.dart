import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<login> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            const Text("Asmita Flutter", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_loginUI(), _getLoginBtn(context)],
        ),
      ),
    );
  }

  Widget _getLoginBtn(BuildContext context) {
    return Container(
        child: MaterialButton(
            color: Colors.deepOrangeAccent,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => login()));
            },
            child: Text("Login",
                style: TextStyle(color: Colors.white, fontSize: 20))),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
  }

  Widget _loginUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_usernameUI(), _passwordUI()],
    );
  }

  Widget _usernameUI() {
    return (Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your username',
        ),
        style: TextStyle(color: Colors.white),
      ),
    ));
  }

  Widget _passwordUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                ),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.visiblePassword,
              ),
              InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  _isHidden ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ])),
      ],
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
