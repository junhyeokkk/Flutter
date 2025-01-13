import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: FormPage(),
        ),
      ),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  // 강한 소유 관계
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _username = '';
  String _password = '';

  // 타입추론
  // 폼 상태를 추적하기위해 관리하는 고유키를 하나 선언
  // 즉 폼에 상태에 접근할 수 있다. (이 키를 가지고)
  var _formKey = GlobalKey<FormState>();

  // 화면을 그리는 메서드
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'username 을 입력하시오.';
              }
              print('텍스트 필드 사용자이름 ');
              return null;
            },
            onSaved: (value) {
              print('사용자 이름 필드 onSaved 호출');
              _username = value!;
            },
          ),
          SizedBox(height: 24.0),
          // 패스워드 받을 때 사용하는 속성
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                // 유효성을 통과 못했으면 텍스트 필드 아래에 친절하게 알려 줘
                return '패스워드를 입력 하시오';
              }
              return null;
            },
            onSaved: (value) {
              print('사용자 비밀번호 필드 onSaved 호출');
              _password = value!;
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              // 유효성 검사 호출
              if (_formKey.currentState!.validate()) {
                // true일경우 들어옴
                print('true를 반환');
                // 저장 메서드 호출
                _formKey.currentState!.save();

                // 통신 하는 코드를 ---> 서버측으로 데이터를 보냄
                // 멤버 변수를 활용해서
              }
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
