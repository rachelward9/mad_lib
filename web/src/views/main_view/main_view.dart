library main_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../model/word.dart';

@CustomTag('main-view')
class MainView extends PolymerElement {
  
  List<Word> wordList = toObservable ([
    new Word(Word.ADJ),
    new Word(Word.NOUN),
    new Word(Word.ADJ),
    new Word(Word.VERB),
    new Word(Word.ADV)
  ]);
  
  @observable String madlib;
  
  // non-visual initialization can be done here
  MainView.created() : super.created();

  // other initialization can be done here
  @override void enteredView() {
    super.enteredView();
    print("MainView::enteredView()");
    print(wordList[0].type);
  }

  // prevent app reload on <form> submission
  void submit(Event event, var detail, Element target) {
    event.preventDefault();
    print(wordList[0].usersWord);
    madlib = "There was once a ${wordList[0].usersWord} ${wordList[1].usersWord}. The ${wordList[1].usersWord} was a very ${wordList[2].usersWord} being. Frequently, the ${wordList[0].usersWord} would ${wordList[3].usersWord}. When it did so, it did it ${wordList[4].usersWord}.";
  }

  // this lets the global CSS bleed through into the Shadow DOM of this element
  bool get applyAuthorStyles => true;
}
