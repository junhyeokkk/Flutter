import 'package:flutter/material.dart';

// 클래스로 만들어보자
// 프로필 헤더 위젯 클래스
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  Column _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '최준혁',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text(
          '프로그래머/연예인/아이돌/배우',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Text(
          '집에 가고 싶습니다!',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }

  SizedBox _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        // AssetImage는 보통 위젯의 배경으로 동작할 때, 꾸밀때
        // 많이 활용하는 위젯이다.
        backgroundImage: AssetImage('assets/profile.jpeg'),
      ),
    );
  }
}
