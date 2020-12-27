import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = Colors.indigo,
  double radius = 10,
  double width = double.infinity,
  @required Function function,
  @required String text,
  bool toUpper = true,
}) =>
    Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          toUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => widget),
);

  void navigateAndFinish(context, widget) =>
    Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
      builder: (context) => widget),
            (Route<dynamic> route) => false);

Widget headText(String text) => Text(
  text,
  style: TextStyle(
    fontSize: 25,
  ),
);

Widget defualtTextBox({
  String title,
  String hint = ' ',
  bool isPassword = false,
  @required TextEditingController controller,
  @required TextInputType type,
}) =>
    Container(
      padding: EdgeInsetsDirectional.only(
        start: 15,
        end: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
            controller: controller,
            keyboardType: type,
          ),
        ],
      ),
    );

void bulidProgress({context ,
text,
}) => showDialog(
  context: context ,
  builder: (context) => AlertDialog(
    content: Row(
      children: [
        CircularProgressIndicator(),
        SizedBox(width: 30,),
        Expanded(
          child: Text
            (
            text
          ),
        )
      ],
    ),
  ));
