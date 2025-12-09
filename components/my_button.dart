import 'package:flutter/material.dart';

class MyButton extends statelessWidget {
  final String text;
  const MyButton ({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return container(
      decoration: BoxDecoration(
        colour: Theme.of(context).colourScheme.secondary,
        borderRadius: BorderRadius.circular(8)
      ), //box decoration
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: Tex("Button"),
