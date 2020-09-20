import 'package:flutter/material.dart';
import 'package:instagram_redesign/src/colors.dart';

class FooterSection extends StatelessWidget {
  final String description;
  FooterSection({
    this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 36.0),
                    height: 33.0,
                    width: 33.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1570840934411-dcd8116cb41b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18.0),
                    height: 33.0,
                    width: 33.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1856&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.0),
                    height: 33.0,
                    width: 33.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  "  " +
                      description.substring(0,
                          (description.length > 30) ? 30 : description.length) +
                      ((description.length > 32) ? "...  " : "  "),
                  style: TextStyle(fontSize: 13.0),
                ),
              ),
            ],
          ),
          Container(
            height: 35.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: beforeLikeColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: FlatButton(
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.all(2.0),
              onPressed: () {},
              child: Text(
                'More',
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
