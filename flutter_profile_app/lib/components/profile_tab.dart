import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 무료 동영상 링크 목록
  final List<String> videoUrls = [
    'https://samplelib.com/lib/preview/mp4/sample-5s.mp4',
    'https://samplelib.com/lib/preview/mp4/sample-10s.mp4',
    'https://samplelib.com/lib/preview/mp4/sample-15s.mp4',
    // 추가 링크를 여기에 추가
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // 탭 2개 설정
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildImageGridView(), // 첫 번째 탭: 이미지
              _buildVideoGridView(), // 두 번째 탭: 동영상
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(icon: Icon(Icons.image), text: '이미지'),
        Tab(icon: Icon(Icons.video_library), text: '동영상'),
      ],
    );
  }

  Widget _buildImageGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return Image.network('https://picsum.photos/id/${index + 10}/200/200');
      },
      itemCount: 20, // 이미지 개수
    );
  }

  Widget _buildVideoGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: videoUrls.length,
      itemBuilder: (context, index) {
        return BetterPlayerWidget(videoUrl: videoUrls[index]);
      },
    );
  }
}

class BetterPlayerWidget extends StatelessWidget {
  final String videoUrl;

  const BetterPlayerWidget({required this.videoUrl, super.key});

  @override
  Widget build(BuildContext context) {
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      videoUrl,
    );

    return AspectRatio(
      aspectRatio: 16 / 9, // 기본 화면 비율 설정
      child: BetterPlayer(
        controller: BetterPlayerController(
          BetterPlayerConfiguration(
            autoPlay: true, // 자동 재생
            looping: true, // 반복 재생
          ),
          betterPlayerDataSource: dataSource,
        ),
      ),
    );
  }
}
