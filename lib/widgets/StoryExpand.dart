import 'package:flutter/material.dart';
import 'package:instagram_redesign/src/colors.dart';

class StoryExpand extends StatefulWidget {
  final String image;
  StoryExpand({this.image});

  @override
  _StoryExpandState createState() => _StoryExpandState();
}

class _StoryExpandState extends State<StoryExpand> {
  double width = 0.0;
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        width = MediaQuery.of(context).size.width;
      });
    });
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: '${widget.image}',
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 5.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 2700),
            height: 5.0,
            width: width,
            margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Positioned(
              top: 40.0,
              left: 20.0,
              child: Container(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        widget.image,
                        height: 40.0,
                        width: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Carl Fernandez',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 35.0,
            right: 10.0,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
