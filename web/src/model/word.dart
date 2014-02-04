library word;

class Word {
  static const String NOUN = "noun";
  static const String VERB = "verb";
  static const String ADJ = "adjective";
  static const String ADV = "adverb";
  static const String PROPER_NOUN = "proper noun";
  static const String EXCLAMATION = "exclamation";
  static const String NUMBER = "number";
  
  String _type;
  String usersWord;
  
  
  Word(this._type, [this.usersWord]);
  
  String get type => _type;

  @override String toString() => usersWord != null ? usersWord : _type;
}