abstract class Shape {
  // 자료형이 없다면 기본적으로 dynamic
  calculateArea();
}

class Circle implements Shape {
  final double rad;

  // 생성자는 가능한 축약형으로 만들자
  Circle(this.rad);

  @override
  double calculateArea() {
    return rad * rad * 3.14;
  }
}

class Rectangle implements Shape {
  final int length;
  final int width;

  Rectangle(this.length, this.width);

  @override
  int calculateArea() {
    return length * width;
  }
}

void calculateArea(Shape s) {
  // 전달된 도형의 면적을 출력하시오.
  print(s.calculateArea());
}

void main() {
  Shape r = Rectangle(2, 4);
  Shape c = Circle(3.0);

  calculateArea(r);
  calculateArea(c);
}
