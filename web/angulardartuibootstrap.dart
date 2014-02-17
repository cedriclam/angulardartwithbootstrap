import 'package:angular/angular.dart';
import 'package:angular_dart_ui_bootstrap/bootstrap.dart';


@NgController(
    selector: '[angulardartuiboot]',
    publishAs: 'mainCtrl')
class angulardartuiboot{
  String testTitle = "this is a test";
  
  bool oneAtATime = true;
  
  bool isopen = false;

  List groups = [
    {
      'title': "Dynamic Group Header - 1",
      'content': "Dynamic Group Body - 1"
    },
    {
      'title': "Dynamic Group Header - 2",
      'content': "Dynamic Group Body - 2"
    }
  ];

  List items = ['Item 1', 'Item 2', 'Item 3'];

  void addItem() {
    int newItemNo = items.length + 1;
    items.add('Item ' + newItemNo.toString());
  }
  
  
}

class MyAppModule extends Module {
  MyAppModule() {
    install(new BootstrapUI());
    type(angulardartuiboot);
  
  }
}

main() {
  ngBootstrap(module: new MyAppModule());
}