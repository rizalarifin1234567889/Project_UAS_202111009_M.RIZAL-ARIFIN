import 'package:flutter/material.dart';
import 'package:login_register_dan_logout/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 206, 221),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("Login",
                    style: TextStyle(
                    fontSize: 30.0,
                    ),
                    ),
                    TextFormField(
                      maxLength: 20,
                      decoration: InputDecoration(
                      labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                suffixIcon: Icon(
                  Icons.email,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: 'Enter your email address',
              ),
              onChanged: (value) {
                controller.email = value;
              },
            ),
            TextFormField(
              maxLength: 20,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                suffixIcon: Icon(
                  Icons.password,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: 'Enter your password',
              ),
              onChanged: (value) {
                controller.password = value;
              },
            ),
            Divider(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 46,
              child: ElevatedButton(
                onPressed: () => controller.login(),
                child: Text("Login"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 46,
              child: ElevatedButton(
                onPressed: () =>Get.to( RegisterView()),
                child: Text("Register"),
              ),
            ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
