import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:instagram_redesign/src/Story.dart';
import 'package:instagram_redesign/src/colors.dart';
import 'package:instagram_redesign/src/post.dart';
import 'package:instagram_redesign/widgets/PostDesign.dart';
import 'package:instagram_redesign/widgets/StoryDesign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Feather.plus_square,
            color: Colors.black45,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Feather.mail,
                color: Colors.black45,
              ),
            )
          ],
          backgroundColor: backgroundColor,
          elevation: 0.0,
          title: Image.asset('images/insta.png', height: 30.0),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: 75.0,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: stories
                              .map(
                                (e) => StoryDesign(
                                  image: e.image,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
                      child: Column(
                        children: posts
                            .map(
                              (e) => PostDesign(
                                name: e.name,
                                city: e.city,
                                likes: e.likes,
                                image: e.image,
                                profileImage: e.profileImage,
                                description: e.description,
                                comments: e.comments,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  child: AnimatedBottomNavigationBar(
                    icons: [
                      Feather.home,
                      Feather.search,
                      Feather.plus_square,
                      Feather.heart,
                      Feather.user,
                    ],
                    activeIndex: 3,
                    leftCornerRadius: 32,
                    rightCornerRadius: 32,
                    onTap: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

