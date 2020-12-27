import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/signUp/cubit/cubit.dart';
import 'Screens/welcome/welcomeScreen.dart';
import 'Shared/components/remote/dio_helper.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

Widget build(BuildContext context) {
  DioHelper();
  return MultiBlocProvider(
      providers: [
      BlocProvider(
      create: (context)=> RegisterCubit(),
  ),
  ],
  child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[260],
      ),
      home: (wlecomeScreen()),
    ),
  );
  }
}