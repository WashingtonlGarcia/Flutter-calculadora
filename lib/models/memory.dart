class Memory {
  String _value = "";
  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += "$command";
    }
  }

  void _allClear() {
    _value = "";
  }

  String get value => _value;
}
