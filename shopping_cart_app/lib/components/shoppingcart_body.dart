import 'package:flutter/material.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildBodyNameAndPrice(),
            SizedBox(height: 10),
            _buildBodyRatingAndReviewCount(),
            SizedBox(height: 10),
            _buildBodyColorOptions(),
            SizedBox(height: 20),
            _buildBodyButton(),
          ],
        ),
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Urban Soft AL 10.0',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '\$699',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _star(),
            _star(),
            _star(),
            _star(),
            _star(),
          ],
        ),
        Row(
          children: [
            Text('review'),
            Text(
              '(26)',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        )
      ],
    );
  }

  // 별점
  Widget _star() {
    return Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }

  // 3. 색상 옵션 선택
  Widget _buildBodyColorOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color Options'),
        SizedBox(height: 10),
        Row(
          children: [
            _buildColorOption(Colors.black),
            _buildColorOption(Colors.green),
            _buildColorOption(Colors.orange),
            _buildColorOption(Colors.grey),
            _buildColorOption(Colors.white),
          ],
        )
      ],
    );
  }

  // 4. 색상 옵션 위젯을 만드는 함수
  Widget _buildColorOption(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                )),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 5. 버튼 만들기
  Widget _buildBodyButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          minimumSize: Size(500, 50), //width, height
        ),
        onPressed: () {},
        child: Text('Add to Cart'));
  }
} // end of body
