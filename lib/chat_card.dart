import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatcard extends StatelessWidget {
  final user_imgae;
  final user_name;
  final user_text;
  final user_comments;
  final user_like;

  final reply_image1;
  final reply_image2;
  final reply_image3;

  Chatcard(this.user_imgae, this.user_comments, this.user_like, this.user_name,
      this.user_text, this.reply_image1, this.reply_image2, this.reply_image3);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            color: Colors.transparent,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user_imgae),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          user_name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ),
                      ],
                    ),
                    Text(user_text),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(reply_image1),
                              backgroundColor: Colors.transparent,
                            ),
                            Positioned(
                              left: 30.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(reply_image2),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            Positioned(
                              left: 50.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(reply_image3),
                                backgroundColor: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.messenger)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.thumb_up_sharp)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            )));
  }
}
