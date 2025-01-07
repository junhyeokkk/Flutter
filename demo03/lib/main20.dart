// Mixin - 1 (사전 기반 지식)
// Dart에서 클래스의 코드를 여러 클래스에 계층에서 재사용 할 수 있도록 해주는 코드 조각
// 책 내용
// Mixin을 사용하게 되면 다중 상속의 문제를 해결할 수 있고 컴퍼지션을 사용하지 않고 (이니셜라이징)
// 다른 클래스의 코드를 재사용 할 수 있다.

// 집중!
// OOP에서 객체 간의 관계를 정의하는 개념들
// 연관관계
// - 객체들이 서로 연결되어 있는 일반적인 관계
// - 컴포지션 관계
// - 집합 관계

// 1-1 컴포지션
//     - 부분-전체 관계 중에서 생명주기가 밀접하게 연관된 강한 소유 관계를 의미한다.
//     - 전체 객체가 소멸될 때 부분 객체도 함께 소멸 됩니다.
//     - 예시 : 차 와 엔진 클래스도 컴포지션 관계
//     [강한 소유 관계]

// 1-2 집합관계
//     - 부분-전체 관계 중에서 전체와 부분의 생명주기가 독립적인 관계를 말한다.
//     - 전체 객체가 소멸될 때 부분 객체는 독립적으로 존재할 수 있다.
//     - 예시 : 부서와 직원 클래스를 생각할 수 있다.
//     - 부서 객체가 소멸되더라도 직원 객체는 계속 존재할 수 있음
//     [약한 소유 관계]

// 2. 이니셜라이저 리스트 ( : )
// 이니셜라이저 리스트는 상속 관계뿐만
// 아니라 연관관계(집합관계 및 컴포지션 관계)에서도 클래스의 필드 초기화 및
// 객체 생성에 유용하게 사용할 수 있다.

class Engine {
  final String type;
  Engine(this.type);

  void startEngine() {
    print('${type} 엔진이 시동됩니다.');
  }
}

class Car {
  final Engine engine;

  // 생성자 코드 1. 축약버전 --> 생성자 바디부분 생략
  // Car(String enginType) : engine = Engine(enginType);
  // Car(this.engine);

  // 생성자 코드 2.
  Car(String enginType) : engine = Engine(enginType) {
    print('생성자 호출 시 내부 스택 메모리가 호출된다.');
  }

  void startCar() {
    engine.startEngine();
    print('차가 출발 합니다.');
  }
}

////////////////////////////////////////////////////
// 집합 관계를 만들어 보자.

class Employee {
  final String name;

  Employee(this.name);

  void displayEmployeeInfo() {
    print('직원의 이름 : ${name}');
  }
}

class Department {
  final String deptName;
  final List<Employee> employees;

  Department(this.deptName) : employees = [] {
    print("=== Department 생성자 내부 스택 호출 ===");
  } // [] -> 리터럴 표기법

  void addEmployee(Employee e) {
    employees.add(e);
  }

  void displayDepartmentInfo() {
    print('-------------------');
    print('부서의 이름 : ${deptName}');
    for (var emp in employees) {
      emp.displayEmployeeInfo();
    }
  }
}

// 코드의 시작점
void main() {
  Engine v9Engine = Engine('v8');
  // Car car = Car(v9Engine);

  ////////////////////////////
  Car car1 = Car('v8');
  // 누군가 참조하고 있지 않다면 GC 대상이 된다.

  print('------------------------');
  Department department1 = Department('개발부');
  Department department2 = Department('디자인부');
  Employee emp1 = Employee('홍길동');
  Employee emp2 = Employee('김철수');
  Employee emp3 = Employee('야스오');

  department1.addEmployee(emp1);
  department1.addEmployee(emp2);
  department2.addEmployee(emp3);

  department1.displayDepartmentInfo();
  department2.displayDepartmentInfo();
}
