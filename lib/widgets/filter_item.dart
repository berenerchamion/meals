import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {

  final String title;
  final String subtitle;
  final bool value;
  final Function updateValue;

  FilterItem(
      this.title,
      this.subtitle,
      this.value,
      this.updateValue,
      );

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      activeColor: Theme.of(context).primaryColor,
      onChanged: updateValue,
    );
  }
}
