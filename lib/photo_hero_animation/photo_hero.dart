import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key? key, required this.photo, required this.ontap, required this.width})
      : super(key: key);
 
  final String photo;
  final VoidCallback ontap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: ontap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}