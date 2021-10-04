class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack() {
    print('공격했다');
  }
}

class Cleric extends Hero {
  static final int maxHp = 50;
  static final int maxMp = 10;

  int mp = maxMp;

  Cleric(String name, int hp) : super(name, hp);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    }
  }
}

void main(List<String> arguments) {
  final hong = Hero('홍길동', 100);
  final lim = Hero('임꺽정', 100);
  final lim2 = Hero('임꺽정', 100);

  print(hong.hashCode);
  print(lim.hashCode);
  print(lim2.hashCode);

  final cleric = Cleric('우서', 300);
}
