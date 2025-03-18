void main() {
  Piano pianoMusician = Piano();
  pianoMusician.play();
  Guitar guitarMusician = Guitar();
  guitarMusician.play();
}

mixin PlayingPiano {
  void play() {
    print("playing piano...");
  }
}

mixin PlayingGuitar {
    void play() {
    print("playing guitar...");
  }
}


class Piano with PlayingPiano {}

class Guitar with PlayingGuitar {}
