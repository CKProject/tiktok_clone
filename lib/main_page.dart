import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok/video_screen.dart';
import 'package:tiktok/widgets/description_widget.dart';
import 'package:tiktok/widgets/title_widget.dart';

List<String> videoList = [
  // 'dummy_1.mp4',
  'dummy_2.mp4',
  'dummy_3.mp4',
  // 'dummy_4.mp4',
];

List<String> nickNameList = [
  'Anvil',
  'Snow White',
  'Pansy',
  'Double Bubble',
];

List<String> descriptionList = [
  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  "It has survived not only five centuries,",
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: videoList.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: VideoScreen(
                      videoName: videoList[index],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DescriptionWidget(
                        nickName: nickNameList[index],
                        description: descriptionList[index],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'asset/icons/live.svg',
                    width: 26,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Expanded(child: TitleWidget()),
                  const SizedBox(
                    width: 30,
                  ),
                  SvgPicture.asset(
                    'asset/icons/search.svg',
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFBDBDBD),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/icons/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/icons/more.svg'),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/icons/upload.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/icons/inbox.svg'),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/icons/profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
