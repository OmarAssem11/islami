import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  const SuraName(this.suraName);
  final String suraName;
  @override
  Widget build(BuildContext context) {
    return Text(
      suraName,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }
}
