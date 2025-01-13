import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_buildFollowButton(), _buildMessageButton()],
    );
  }

  InkWell _buildFollowButton() {
    // InkWell : 터치 이벤트(탭, 더블 탭)를 감지하고 시각적 피드백도 제공합니다.
    // 터치 하고자하는 영역을 감싸서 만들 수 있다.
    return InkWell(
      onTap: () {
        print('팔로우~~');
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
        width: 150,
        height: 45,
        child: Text('Follow', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  InkWell _buildMessageButton() {
    return InkWell(
      onTap: () {
        print('메시지~~');
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.0)),
        width: 150,
        height: 45,
        child: Text('Message', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
