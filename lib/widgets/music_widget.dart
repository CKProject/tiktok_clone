import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MusicWidget extends StatefulWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  State<MusicWidget> createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
        },
        child: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            gradient: const SweepGradient(
              colors: [
                Color(0xFF373737),
                Color(0xFF161616),
                Color(0xFF373737),
                Color(0xFF161616),
                Color(0xFF373737),
              ],
              stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            backgroundImage: CachedNetworkImageProvider(
                'https://picsum.photos/11${math.Random().nextInt(10)}'),
          ),
        ),
      ),
    );
  }
}
