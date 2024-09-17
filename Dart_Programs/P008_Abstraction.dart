abstract class RBI {
  void SA();
  static void RepoRate() {
    print('repo rate : +-4%');
  }

  void call() {
    print('call in RBI');
  }
}

class Kotak extends RBI {
  @override
  void SA() {
    print('Kotak SA : 5%');
  }
}

class HDFC extends RBI {
  @override
  void SA() {
    // TODO: implement SA
    print('HDFC SA : 6%');
  }
}

class DART extends RBI {
  @override
  void SA() {
    print('Dart SA : 7%');
  }
}

void main(List<String> args) {
  Kotak k = new Kotak();
  k.SA();
  k.call();
  HDFC h = new HDFC();
  h.SA();
  DART d = new DART();
  d.SA();
  RBI.RepoRate();
}
