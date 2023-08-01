import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: screenwidth>1000?5:screenwidth>400?3:1,
        ),
        children: [
          Card(
            child: Container(
              color: Colors.tealAccent,
              alignment: Alignment.center,
              child: Text("data"),
            ),
          ),Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.tealAccent,
              child: Text("data"),
            ),
          ),Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.tealAccent,
              child: Text("data"),
            ),
          ),Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.tealAccent,
              child: Text("data"),
            ),
          ),
        ],),
    );
  }
}