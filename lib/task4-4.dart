void main() {
  SportsClub sportsClub = SportsClub();
  sportsClub.setSection1(Basketball());
  sportsClub.setSection2(Soccer());
  sportsClub.section1?.play();
  sportsClub.section2?.play();
}

abstract interface class Playable {
  void play(); 
}

class Soccer implements Playable {
  @override
  void play() {
    print("playing soccer...");
  }
}

class Basketball implements Playable {
  @override
  void play() {
    print("playing basketball...");
  }
}

class SportsClub {
  Playable? section1;
  Playable? section2;

  void setSection1(Playable sportType) {
    this.section1 = sportType;
  }

  void setSection2(Playable sportType) {
    this.section2 = sportType;
  }
}
