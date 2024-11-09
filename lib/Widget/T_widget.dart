import 'package:flutter/material.dart';
class T_Widget extends StatelessWidget {
  String notification ;
  T_Widget({required this.notification});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(notification,style: TextStyle(color: Colors.red,fontSize:20,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
