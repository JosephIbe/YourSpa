import 'package:flutter/material.dart';

const inputDecoration = InputDecoration(
  border: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 2.0,
          color: Colors.pinkAccent
      )
  ),
  enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 2.0,
          color: Colors.pinkAccent
      )
  ),
  focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 2.0,
          color: Colors.pinkAccent
      )
  ),
  disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 2.0,
          color: Colors.blueGrey
      )
  ),
  errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 3.0,
          color: Colors.red
      )
  ),
  focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 3.0,
          color: Colors.red
      )
  ),
);