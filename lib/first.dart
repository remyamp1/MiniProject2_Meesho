import 'package:flutter/material.dart';
import 'package:meesho/secondpage.dart';
class FadeTransitionDemo extends StatefulWidget{
  const FadeTransitionDemo ({super.key});
  @override
  State <FadeTransitionDemo> createState()=> _FadeTransitionDemoState();

}
class _FadeTransitionDemoState extends State<FadeTransitionDemo>
with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<double> ? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(duration: Duration(seconds: 2),
    vsync: this);
    _animation=CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
    _controller!.forward();
  }
  @override
 void dispose()
 {
  _controller!.dispose();
  super.dispose();
 }
 @override
 Widget build (BuildContext context){
  Future.delayed(Duration(seconds: 5),(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo()));
  });
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 224, 92, 136),
    body: Center(
      child: FadeTransition(opacity:_animation!,
      child: Container(
        width: 200,
        height: 200,
        color: const Color.fromARGB(255, 105, 4, 75),
        child: Center(
          child: Text("Meesho",style: TextStyle(fontSize: 50,color: Colors.yellow),),
        ),
      ),),
    ),
   
  );
 }
}