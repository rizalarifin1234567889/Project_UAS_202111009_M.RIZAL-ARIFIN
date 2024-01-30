
import 'package:flutter/material.dart';
import 'package:login_register_dan_logout/core.dart';
import '../view/register_view.dart';

class RegisterController extends State<RegisterView> {
    static late RegisterController instance;
    late RegisterView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);

    String? email;
    String? password;
    
    register() async {
      bool isLoggedIn = await AuthService().register(
        email: email!,
        password: password!,
      );

      if (!isLoggedIn) {
        const snackBar = SnackBar(
        content: Text('Failed to Register!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      }

      Get.offAll(const MainNavigationView());
    }
}
        
    