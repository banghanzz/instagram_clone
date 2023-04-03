import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: [
        //AppBar Profile
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "username",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ],
              ),
            ],
          ),
        ),

        //Profile Info
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              //Profile Picture
              Container(
                width: 95,
                height: 95,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.pink,
                                Colors.amber,
                              ]),
                          borderRadius: BorderRadius.circular(60)),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/id/64/367/267"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileInfo(
                    total: 43.toString(),
                    title: "Posts",
                  ),
                  ProfileInfo(
                    total: 3452.toString(),
                    title: "Followers",
                  ),
                  ProfileInfo(
                    total: 1023.toString(),
                    title: "Following",
                  ),
                ],
              ))
            ],
          ),
        ),

        //Profile Desc
        SizedBox(
          height: 12,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "The Name of the author",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            )),
        SizedBox(
          height: 4,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adip proident dolor sit amet ",
                style: TextStyle(color: Colors.grey[700]),
                children: [
                  TextSpan(
                    text: "#hastag",
                    style: TextStyle(color: Colors.blueAccent[700]),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Link to my portofolio",
            style: TextStyle(
              color: Colors.blueAccent[700],
            ),
          ),
        ),

        //Stories
        SizedBox(
          height: 12,
        ),
        Container(
            height: 100,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 16,
                itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Container(
                                  width: 72,
                                  height: 72,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[700],
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://picsum.photos/id/${index + 544}/500/500",
                                        ),
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )),
                                ),
                              ],
                            )),
                        Text("Story ${index + 1}"),
                      ],
                    ))),
      ]),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.title,
    required this.total,
  }) : super(key: key);

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
