import 'package:flutter/material.dart';

class circle_image extends StatelessWidget {
  String image;
  String text;
  circle_image(this.image, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(image))),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            text,
            style:
                TextStyle(color: Colors.black, overflow: TextOverflow.ellipsis),
                
          )
        ],
      ),
    );
  }
}
