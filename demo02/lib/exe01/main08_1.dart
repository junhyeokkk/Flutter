// 익명 함수
// 코드에 시작점
void main() {
  (int number) {
    return 10 * 5;
  };

  // 원의 넓이
  Function(double) circle = (double n1) {
    return n1 * n1 * 3.14;
  };

  // 정사각형 넓이
  var square = (int num1) {
    return num1 * num1;
  };

  // 직사각형 넓이
  var rectangle = (num1, num2) {
    return num1 * num2;
  };

  // 짝수 필터링
  var listfilter = (var list) {
    List<int> aa = [];
    for (var num in list) {
      if (num % 2 == 0) {
        aa.add(num);
      }
    }
    return aa;
  };

  List<int> aaa = [1, 2, 3, 4, 5];
  print("짝수 필터링 : ${listfilter(aaa)}");
} // end of main
