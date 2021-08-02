import 'package:flutter/material.dart';

class StyledContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        'Panda',
        style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            decoration: TextDecoration.none,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 0, 0, 0),
              )
            ]),
      ),

      width: 200,
      height: 200,
      margin: EdgeInsets.all(50),
      alignment: Alignment.center,

      // width: double.infinity,
      // color: Colors.green,
      // padding: EdgeInsets.all(50),
      // transform: Matrix4.rotationZ(0.1),

      decoration: BoxDecoration(
          // gradient: LinearGradient(colors: [Colors.red, Colors.cyan])
          color: Colors.green,
          image: DecorationImage(
              image: Image(image: AssetImage('assets/bamboo_2.jpg')).image,
              fit: BoxFit.cover),
          // image: Image(image: AssetImage('assets/bamboo_1.jpg')).image,
          // image: Image.asset('assets/bamboo_1.jpg').image, fit: BoxFit.cover),

          // border: Border.all(
          //   color: Colors.black45,
          //   width: 8,
          // ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(-5, 5),
                blurRadius: 5,
                spreadRadius: 5)
          ]

          // borderRadius: BorderRadius.circular(15),
          ),
    ));
  }
}
