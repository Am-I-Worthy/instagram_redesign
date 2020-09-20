import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:instagram_redesign/src/colors.dart';

bool saveToggle = false;

class UtilitySection extends StatefulWidget {
  final String likes;
  final String comments;
  final bool likeToggle;

  UtilitySection({
    this.likes,
    this.comments,
    this.likeToggle,
  });

  @override
  _UtilitySectionState createState() => _UtilitySectionState();
}

class _UtilitySectionState extends State<UtilitySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 375),
                margin: EdgeInsets.only(
                  left: 10.0,
                ),
                height: 37.0,
                width: 75.0,
                decoration: BoxDecoration(
                  color: widget.likeToggle ? afterLikeColor : backgroundColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25.0,
                        width: 25.0,
                        child: Icon(
                          widget.likeToggle ? AntDesign.heart : AntDesign.hearto,
                          color: widget.likeToggle ? Colors.white : Colors.black,
                          size: 16.0,
                        ),
                      ),
                      Text(
                        widget.likes,
                        style: TextStyle(
                          color: widget.likeToggle ? Colors.white : Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    AntDesign.message1,
                    size: 20.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    widget.comments,
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                FontAwesome.paper_plane,
                size: 18.0,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                saveToggle = !saveToggle;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                saveToggle ? FontAwesome.bookmark : FontAwesome.bookmark_o,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
