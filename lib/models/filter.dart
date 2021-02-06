import 'package:flutter/material.dart';

class Filter {
  @required final String name;
  bool value;

  Filter({this.name, this.value = false});

}