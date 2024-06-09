import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:instagram/presentation/context.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("icons/logo.svg"),
        actions: const [StoriesButton()],
      ),
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AddToStory(),
                      ...List.generate(12, (index) => const FollowerStory())
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Divider(
                  color: Colors.grey.shade200,
                ),
              ),
              ...List.generate(100, (index) => const Post())
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        width: context.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("icons/home.svg"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("icons/explore.svg"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("icons/add.svg"),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("icons/dm.svg"),
                  ],
                ),
                Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(color: Color(0xFFFE0135)),
                  margin: const EdgeInsets.only(bottom: 8),
                )
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ],
                ),
                Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(color: Color(0xFFFE0135)),
                  margin: const EdgeInsets.only(bottom: 8),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  padding: const EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: const GradientBoxBorder(
                          width: 2.3,
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFFC913B9),
                                Color(0xFFF9373F),
                                Color(0xFFFECD00),
                              ]))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/c1.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 11),
                  child: Text(
                    "monkeycatluna",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset("icons/more.svg"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: AspectRatio(
              aspectRatio: 1.91 / 1,
              child: Placeholder(),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset("icons/like.svg"),
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset("icons/comment.svg"),
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset("icons/send.svg"),
                  const Spacer(),
                  SvgPicture.asset("icons/save.svg"),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF32B5FF)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFC4C4C4)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFC4C4C4)),
                  ),
                ],
              ),
            ],
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 6, left: 12),
                child: Text(
                  "100 Likes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 6, left: 12, right: 12),
                child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text: const TextSpan(
                        text: "monkeycatluna ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        ])),
              )),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 6, left: 12),
                child: Text(
                  "30 minutes ago",
                  style: TextStyle(fontSize: 12, color: Color(0xFF6E6E6E)),
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 64,
            width: context.screenWidth,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 6, left: 12, right: 12),
                  child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      text: const TextSpan(
                          text: "username ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                text: "Amazing content")
                          ])),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "View all 16 comments",
                    style: TextStyle(color: Color(0xFF6E6E6E)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

class FollowerStory extends StatelessWidget {
  const FollowerStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 62,
            width: 62,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: const GradientBoxBorder(
                    width: 2.3,
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFC913B9),
                          Color(0xFFF9373F),
                          Color(0xFFFECD00),
                        ]))),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/c1.png",
                )),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "mango_sickles",
            style: TextStyle(
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}

class AddToStory extends StatelessWidget {
  const AddToStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(100)),
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: const Color(0xFF1FA1FF),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Your story",
          style: TextStyle(fontSize: 11, color: Color(0xFF6E6E6E)),
        )
      ]),
    );
  }
}

class StoriesButton extends StatefulWidget {
  const StoriesButton({super.key});

  @override
  State<StoriesButton> createState() => _StoriesButtonState();
}

class _StoriesButtonState extends State<StoriesButton> {
  bool isExpaned = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 13),
      child: InkWell(
        onTap: () {
          setState(() {
            isExpaned = !isExpaned;
          });
        },
        child: isExpaned
            ? Row(
                children: [
                  const Text(
                    "Collapse Stories",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset(
                    "icons/sc.svg",
                    height: 30,
                    width: 30,
                  ),
                ],
              )
            : Row(
                children: [
                  const Text(
                    "Expand Stories",
                    style: TextStyle(fontSize: 12),
                  ),
                  SvgPicture.asset(
                    "icons/se.svg",
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
      ),
    );
  }
}
