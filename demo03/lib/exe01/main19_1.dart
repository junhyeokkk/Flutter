/* (1) Animal 클래스를 만들고, 다음 조건을 만족하세요.
    1. String 타입의 name 필드를 **final**로 선언
    2. 생성자를 통해 이름을 초기화

   (2) Dog 클래스를 만들고, 다음 조건을 만족하세요.

    1. Animal 클래스를 **상속**(extends)
    2. 생성자에서 **이니셜라이저 리스트**를 사용해 부모 생성자에 name을 전달
    3. bark() 라는 메서드를 만들어 "멍멍!"을 출력
 */
class Animal {
  late final String? name;

  Animal(String? name) {
    this.name = name;
  }
}

class Dog extends Animal {
  Dog(String? name) : super(name) {}

  void bark() {
    print('멍멍!');
  }
}

// 코드의 시작점
void main() {
  Animal a1 = Animal('토토');
  print('a1 의 이름은 ? ${a1.name}');

  Dog d1 = Dog('토순이');
  print('dog 객체 이름은? ${d1.name}');
  d1.bark();
}
