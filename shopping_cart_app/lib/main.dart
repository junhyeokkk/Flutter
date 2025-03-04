import 'package:flutter/material.dart';
import 'package:shopping_cart_app/components/shoppingcart_body.dart';
import 'package:shopping_cart_app/components/shoppingcart_header.dart';
import 'package:shopping_cart_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: ShoppingCartPage(),
    );
  }
}

// 여기는 페이지
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildShoppingCartAppbar(),
      body: Column(
        children: [
          ShoppingcartHeader(),
          SizedBox(height: 20),
          Expanded(child: ShoppingcartBody()),
          // 디테일
        ],
      ),
    ));
  }

  AppBar _buildShoppingCartAppbar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
