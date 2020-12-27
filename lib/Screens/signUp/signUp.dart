import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/login/loginSecreen.dart';
import 'package:flutter_app/Screens/signUp/cubit/states.dart';
import 'package:flutter_app/Shared/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';


class signupScreen extends StatelessWidget {
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var CityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (context, state) {
          if(state is RegisterStateLoading)
            {
              bulidProgress(
                context: context ,
                text: 'please wait'
              );
            }

          if (state is RegisterStateSucess)
            {
              Navigator.pop(context);
              print('sucess');
              navigateAndFinish(context, loginScreen());

            }

          if (state is RegisterStateError)
          {
            bulidProgress(
              context: context ,
              text: state.error.toString(),
            );

          }
        } ,
      builder:(context,state)
        {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: headText('SignUp'),
                    ),
                    SizedBox(height: 25),
                    defualtTextBox(
                      title: "FirstName",
                      hint: 'Enter Your first Name',
                      controller: firstnameController,
                      type: TextInputType.text,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defualtTextBox(
                      title: "LastName",
                      hint: 'Enter Your last Name',
                      controller: lastnameController,
                      type: TextInputType.text,
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
                      title: "Passowrd",
                      hint: 'Enter Your Passowrd ',
                      controller: passController,
                      type: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    defualtTextBox(
                      title: "City",
                      hint: 'Enter Your City',
                      controller: CityController,
                      type: TextInputType.text,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    defaultButton(
                      function: () {
                        RegisterCubit.get(context).register(
                          first: firstnameController,
                          last: lastnameController,
                          email: emailController,
                          pass: passController,
                          city: CityController,
                        );
                      },

                      text: ('SignUp'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
