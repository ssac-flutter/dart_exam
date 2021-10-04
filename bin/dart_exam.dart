import 'dart:math';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack() {
    print('공격했다');
  }
}

class Cleric extends Hero {
  static const int maxHp = 50;
  static const int maxMp = 10;

  int mp;

  Cleric(String name, {int hp = maxHp, this.mp = maxMp}) : super(name, hp);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int sec) {
    int recoveryMp = sec + Random().nextInt(3); // 0 ~ 2

    int beforeMp = mp;  // 회복 전 MP

    mp += recoveryMp;

    // if (maxMp < mp) {
    //   mp = maxMp;
    // }
    mp = min(mp, maxMp);

    return mp - beforeMp;
  }
}

void main(List<String> arguments) {
  final hong = Hero('홍길동', 100);
  final lim = Hero('임꺽정', 100);
  final lim2 = Hero('임꺽정', 100);

  print(hong.hashCode);
  print(lim.hashCode);
  print(lim2.hashCode);

  final cleric = Cleric('우서', hp: 300, mp: 100);
  print(cleric.mp);
}
