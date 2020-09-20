import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  final String profileImage;
  final String name;
  final String city;

  PostTitle({
    this.city,
    this.name,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  profileImage,
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  city,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            )
          ],
        ),
        IconButton(
          padding: EdgeInsets.only(right: 20.0),
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            size: 33.0,
          ),
        ),
      ],
    );
  }
}
