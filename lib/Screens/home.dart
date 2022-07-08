import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// class myState extends StatefulWidget {
//
//   @override
//   // State<myState> createState() => _myStateState();
// }

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}
class HomeState extends State<HomeScreen> {
  String message = "Hello World";
  bool iscolour = true;
  Color colour = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ( iscolour ? Colors.white : Colors.black12),
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(fontSize: 25,color:  ( iscolour ? Colors.black : Colors.white)),
          ),
          ElevatedButton(
            child: const Text("Update kr"),
            onPressed: () {
              setState((){
                message = "Update hogya hun ";
                iscolour = !iscolour;

              });
            },
          ),
        ],
      ),
    ));
  }
}
