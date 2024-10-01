import 'dart:developer';

import 'package:flutter/material.dart';

Widget defaultButtom({bgColor, title, onPressed, width}) => Container(
      width: width,
      color: bgColor,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title.toString().toUpperCase(),
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );

    
