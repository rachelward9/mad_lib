library main_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../model/word.dart';

@CustomTag('main-view')
class MainView extends PolymerElement {
  
  List<String> wordList = [
    "adjective",
    "noun",
    "adjective",
    "verb",
    "adverb"
  ];
  
  @observable String adj1;
  @observable String noun;
  @observable String adj2;
  @observable String verb;
  @observable String adv;
  
  // non-visual initialization can be done here
  MainView.created() : super.created();

  // other initialization can be done here
  @override void enteredView() {
    super.enteredView();
    print("MainView::enteredView()");
  }

  void insertWord(Event event, var detail, Element target) {
    event.preventDefault();
    print("insertWord");
    print(adj1);
    print(noun);
    print(adj2);
    print(verb);
    print(adv);
  }   

  // prevent app reload on <form> submission
  void submit(Event event, var detail, Element target) {
    event.preventDefault();
  }

  // this lets the global CSS bleed through into the Shadow DOM of this element
  bool get applyAuthorStyles => true;
}
