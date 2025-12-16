
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles{

  static const textStyle14 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: kGtsSectraFine,
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGtsSectraFine,
  );



}

// one font family for the whole app, maybe it be different in some small areas
// in the app but most of the app follow one font family

// our criteria the font size + font weight