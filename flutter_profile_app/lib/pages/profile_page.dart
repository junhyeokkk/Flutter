import 'package:flutter/material.dart';
import 'package:flutter_profile_app/components/profile_buttons.dart';
import 'package:flutter_profile_app/components/profile_header.dart';
import 'package:flutter_profile_app/components/profile_count_info.dart';
import 'package:flutter_profile_app/components/profile_tab.dart';

// 페이지 단위에 위젯을 만들어 보자. --> 클래스
// 우리들의 규칙 2 <-- Scaffold
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
        ),
        endDrawer: Container(
          width: 200,
          //double.infinity <-- 가능한 최대로 확장 하라
          // height: double.infinity,
          color: Colors.blue,
        ),
        body: Column(
          children: [
            // 공백 20,
            const SizedBox(height: 20),
            // 프로필 헤더,
            ProfileHeader(),
            // 공백 20,
            const SizedBox(height: 20),
            // 프로필 카운트 정보,
            ProfileCountInfo(),
            // 공백 20,
            const SizedBox(height: 20),
            // 프로필 버튼 2개,
            ProfileButton(),
            // 탭바 영역 (영역을 명시해주어야함!!)
            Expanded(child: ProfileTab()),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////
// 상태가 있는 위젯을 만들어 보자
