/*
## 문제 2: 집합관계(Aggregation) 설계하기

### 문제 설명

Apartment와 Resident 클래스 간의 관계를 집합관계(Aggregation)로 설계하세요.
Apartment 클래스는 여러 Resident 객체를 포함하며, Apartment 객체가 소멸되더라도
Resident 객체들은 독립적으로 존재할 수 있어야 합니다. Apartment 클래스에는 건물 이름(buildingName)과
거주자 리스트(residents)를 포함하고, Resident 클래스에는 거주자 이름(name)을 포함합니다.
 또한, Apartment 객체의 정보를 출력하는 displayApartmentInfo() 메서드를 구현하세요.

*/

class Apartment {
  final String buildingName;
  final List<Resident> residents;

  Apartment(this.buildingName) : residents = [];

  void addResident(Resident r) {
    residents.add(r);
  }

  void displayApartmentInfo() {
    print('------------------------');
    print('아파트 정보 출력');
    print('빌딩 이름 : ${buildingName}');
    for (var r in residents) {
      r.displayResidentName();
    }
  }
}

class Resident {
  final String name;

  Resident(this.name);

  void displayResidentName() {
    print('거주자 이름 : ${name}');
  }
}

void main() {
  Apartment a = Apartment('삼성빌딩');
  Apartment b = Apartment('현대빌딩');

  Resident r1 = Resident('홍길동');
  Resident r2 = Resident('이순신');
  Resident r3 = Resident('강감찬');

  a.addResident(r1);
  a.addResident(r2);
  b.addResident(r3);

  a.displayApartmentInfo();
  b.displayApartmentInfo();
}
