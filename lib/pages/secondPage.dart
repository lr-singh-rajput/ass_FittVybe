import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Slot"),
      ),
      body: Center(
        child:Text("This is a dummy Page ",style: TextStyle(fontSize: 17),textAlign: TextAlign.center,),
      ),
    );
  }
}
