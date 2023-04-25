import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok/widgets/music_widget.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Theme.of(context).primaryColor,
                  backgroundImage: CachedNetworkImageProvider(
                      'https://picsum.photos/10${Random().nextInt(10)}'),
                ),
              ),
            ),
            Positioned(
              left: 13,
              bottom: 0,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(
                  CupertinoIcons.plus,
                  color: Colors.white,
                  size: 13,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
              size: 30,
            ),
            Text(
              Random().nextInt(100).toString(),
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('asset/icons/comment.svg'),
            const SizedBox(
              height: 2,
            ),
            Text(
              Random().nextInt(100).toString(),
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.bookmark_fill,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              Random().nextInt(100).toString(),
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.arrowshape_turn_up_right_fill,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              Random().nextInt(100).toString(),
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const MusicWidget(),
      ],
    );
  }
}
