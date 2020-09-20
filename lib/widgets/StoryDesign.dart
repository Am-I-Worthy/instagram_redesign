import 'package:flutter/material.dart';
import 'package:instagram_redesign/src/colors.dart';
import 'package:instagram_redesign/widgets/StoryExpand.dart';

class StoryDesign extends StatelessWidget {
  final String image;

  StoryDesign({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 3.0, right: 3.0),
          height: 64.0,
          width: 64.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffF58529),
                Color(0xffFEDA77),
                Color(0xffDD2A7B),
                Color(0xff8134AF),
                Color(0xff515BD4),
              ],
            ),
            borderRadius: BorderRadius.circular(22.0),
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(21.0),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StoryExpand(image: image)),);
          },
                  child: Hero(
                    tag: '$image',
                                      child: Container(
            height: 55.0,
            width: 55.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
                  ),
        ),
      ],
    );
  }
}
