
import 'package:flutter/material.dart';

class card2 extends StatelessWidget {
  String image;
  String title1;
  String title2;
  card2(this.image, this.title1, this.title2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 0.2)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.contain),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              height: 100,
              width: 160,
            ),
            SizedBox(height: 10,),
            Text(title1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
            SizedBox(height:2),
            Text(title2,style: TextStyle(fontSize:15,fontWeight: FontWeight.w400 ),)
          ],
        ));
  }
}
