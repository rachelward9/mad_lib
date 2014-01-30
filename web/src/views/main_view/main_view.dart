library main_view;

import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('main-view')
class MainView extends PolymerElement {
  
  List<String> wordList = [
    "adjective",
    "noun",
    "adjective",
    "verb",
    "adverb"
  ];
  
  List<String> userWordList = [];
  
  @observable String userWord;

  // non-visual initialization can be done here
  MainView.created() : super.created();

  // other initialization can be done here
  @override void enteredView() {
    super.enteredView();
    print("MainView::enteredView()");
  }

  void insertWord(Event event, var detail, Element target) {
    event.preventDefault();
    
    userWord = userWord.trim();
    
    if (userWord.isNotEmpty) {
      userWordList.add(userWord);
      userWord = "";
    }
  }

  // prevent app reload on <form> submission
  void submit(Event event, var detail, Element target) {
    event.preventDefault();
  }

  // this lets the global CSS bleed through into the Shadow DOM of this element
  bool get applyAuthorStyles => true;
}
