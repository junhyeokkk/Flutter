import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo('50', 'Posts'),
        _buildLine(),
        _buildInfo('10', 'Likes'),
        _buildLine(),
        _buildInfo('3', 'Share'),
      ],
    );
  }

  Container _buildLine() {
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text('${count}', style: TextStyle(fontSize: 15)),
        const SizedBox(height: 5),
        Text('${title}', style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
