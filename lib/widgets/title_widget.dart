import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Friends',
                    style: GoogleFonts.notoSans(
                      color: selectedIndex == 0
                          ? Colors.white
                          : const Color(0xFFBDBDBD),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedIndex == 0
                      ? Container(
                          width: 20,
                          height: 3,
                          margin: const EdgeInsets.only(top: 5),
                          color: Colors.white,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Following',
                    style: GoogleFonts.notoSans(
                      color: selectedIndex == 1
                          ? Colors.white
                          : const Color(0xFFBDBDBD),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedIndex == 1
                      ? Container(
                          width: 20,
                          height: 3,
                          margin: const EdgeInsets.only(top: 5),
                          color: Colors.white,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'For You',
                    style: GoogleFonts.notoSans(
                      color: selectedIndex == 2
                          ? Colors.white
                          : const Color(0xFFBDBDBD),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedIndex == 2
                      ? Container(
                          width: 20,
                          height: 3,
                          margin: const EdgeInsets.only(top: 5),
                          color: Colors.white,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
