// 코드의 시작점

class Character {
  String? hp;
  String? name;
  String? power;
  Character() {
    print("게임 캐릭터");
  }
}

class Wizard extends Character {
  Wizard();
  void iceattack() {
    print('얼음 마법 공격!');
  }
}

class Warrior extends Character {
  Warrior();
  void doublecombo() {
    print('2단 콤보 공격');
  }
}

void main() {
  Character c1 = Character();
  Wizard w1 = Wizard();
  Warrior w2 = Warrior();
  w1.iceattack();
  w2.doublecombo();
}
