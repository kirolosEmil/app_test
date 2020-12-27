import 'package:flutter/material.dart';
import 'package:flutter_app/Shared/components/components.dart';



class loginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar()),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: headText('login'),
              ),
              SizedBox(
                height: 20,
              ),
              defualtTextBox(
                title: "Email",
                hint: 'Enter Your Email',
                controller: emailController,
                type: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              defualtTextBox(
                title: "Password",
                hint: '****************',
                controller: passController,
                type: TextInputType.visiblePassword,
                isPassword: true,
              ),
              SizedBox(
                height: 45,
              ),
              defaultButton(function: (){}, text: 'login')
            ],
          ),
        ),
      ),
    );
  }
}
