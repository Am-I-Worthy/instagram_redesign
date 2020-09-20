import 'package:flutter/material.dart';
import 'package:instagram_redesign/widgets/FooterSection.dart';
import 'package:instagram_redesign/widgets/PostTitle.dart';
import 'package:instagram_redesign/widgets/UtilitySection.dart';

class PostDesign extends StatefulWidget {
  final String name;
  final String city;
  final String image;
  final String profileImage;
  final String likes;
  final String comments;
  final bool saved;
  final String description;

  PostDesign({
    this.city,
    this.comments,
    this.description,
    this.image,
    this.likes,
    this.name,
    this.profileImage,
    this.saved,
  });

  @override
  _PostDesignState createState() => _PostDesignState();
}

class _PostDesignState extends State<PostDesign> {
  bool likeToggle = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: MediaQuery.of(context).size.height * 0.635,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PostTitle(
            city: widget.city,
            name: widget.name,
            profileImage: widget.profileImage,
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                likeToggle = !likeToggle;
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 20.0,
                    spreadRadius: -10.0,
                    offset: Offset(0.0, 10.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.image),
                ),
              ),
            ),
          ),
          UtilitySection(
            likes: widget.likes,
            comments: widget.comments,
            likeToggle: likeToggle,
          ),
          FooterSection(
            description: widget.description,
          ),
        ],
      ),
    );
  }
}
