import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  List<Poke> pokelist = [
    Poke('피카츄', 'poke.jpeg'),
    Poke('뮤', 'mu.jpeg'),
    Poke('이상해씨', 'dltkdgo.jpeg'),
    Poke('꼬부기', 'bugi.jpeg'),
    Poke('파이리', 'fire.jpeg'),
  ];
  runApp(MyApp(pokelist));
}

class Poke {
  final String name;
  final String imgName;

  Poke(this.name, this.imgName);
}

class MyApp extends StatelessWidget {
  final List<Poke> pokelist;

  const MyApp(this.pokelist, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              '포켓몬 도감',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              final restart = index % pokelist.length; // 인덱스 재조정
              final poke = pokelist[restart]; // 리스트에서 데이터 가져오기
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/${poke.imgName}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        poke.name, // 포켓몬 이름
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text('${index + 1}'),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
