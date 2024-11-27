
import 'package:flutter/material.dart';

class CustomAppBar{
  static AppBar setAppBar(BuildContext context,String title, VoidCallback func) {
    return  AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      actions: [
        GestureDetector(
          onTap:func,
          child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.logout)),
        )
      ],
    );
  }
}