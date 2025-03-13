void main() {
  Piano pianoMusician = Piano();
  pianoMusician.play();
  Guitar guitarMusician = Guitar();
  guitarMusician.play();
}

mixin Playing {
  void play();
}

class Piano with Playing {
  void play() {
    print("playing piano");
  }
}

class Guitar with Playing {
  void play() {
    print("playing guitar");
  }
}
