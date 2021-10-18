import 'package:flutter/material.dart';
import 'package:veotimevisitor/pages/homepage.dart';

class VeoTime extends StatefulWidget{
  const VeoTime({Key? key}) : super(key: key);

   
  @override
  State<VeoTime> createState() => _VeoTimeState();
}

class _VeoTimeState extends State<VeoTime> {
@override
Widget build(BuildContext context) {
  return const  MaterialApp(
    
    debugShowCheckedModeBanner: false,
   home: Center(
      child:  HomePage()
        
    ),

  );
}
}