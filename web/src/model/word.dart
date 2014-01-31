library word;

import 'package:polymer/polymer.dart';

class Word extends Object with Observable {
  @observable String usersWord;
  @observable String type;
  
  Word(this.usersWord, this.type);
}