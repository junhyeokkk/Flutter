/*
## 문제 1: 컴포지션 관계 설계하기

### 문제 설명

House와 Room 클래스 간의 관계를 컴포지션(Composition) 관계로 설계하세요.
House 클래스는 Room 객체를 포함하며, House 객체가 소멸될 때 Room 객체도 함께 소멸되어야
합니다. House 클래스에는 주소(address)와 방(room) 정보를 포함하고,
Room 클래스에는 방 번호(roomNumber)를 포함합니다. 또한, House 객체의
정보를 출력하는 displayHouseInfo() 메서드를 구현하세요.

 */

class Room {
  final int roomNumber;
  Room(this.roomNumber);

  void displayRoomInfo() {
    print('방 번호 : ${roomNumber}');
  }
}

class House {
  final String address;
  final Room room;

  House(this.address, int roomNumber) : room = Room(roomNumber);

  void displayHouseInfo() {
    print('------------------------------');
    print('집 주소 : ${address}');
    room.displayRoomInfo();
  }
}

void main() {
  House h = House('부산시 부산진구', 1);

  h.displayHouseInfo();
}
