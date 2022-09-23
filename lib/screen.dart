import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';



class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
      
        height: 844,
      width: 390,
      decoration: const BoxDecoration(
      color: Color(0xff039EA2)
      ),
      alignment: Alignment.center,

      
      child: Column(
        
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 149.0),
              
            ),
          SvgPicture.asset("assets/medinow.svg", width: 184, height: 30.78),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
            ),

          const Text('Meditate With Us!', style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),

          Container(
              margin: const EdgeInsets.only(top: 45.0),
            ),

         ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white, 
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), 
            ),
            padding: const EdgeInsets.fromLTRB(103, 14, 103, 14),
            elevation: 0,
            ),
            onPressed: () { },
            child: const Text('Sign in with Apple', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),),
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              
            ),
            ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xffCDFDFE),
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), 
            ),
            elevation: 0,
            padding: const EdgeInsets.fromLTRB(61, 14, 61, 14),
            
            
            ),
            onPressed: () { },
            child: const Text('Continue with Email or Phone', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),),
            ),

            Container(
              margin: const EdgeInsets.only(top: 10.0),
              
            ),
            const Text('Continue With Google', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),
          Container(
              margin: const EdgeInsets.only(top: 100.0),
              
            ),

          SvgPicture.asset("assets/welcome_image.svg", width: 377.48, height: 284.34),
          
          
        ]
      ),
      ),
      
      ),
      
      

         
    );
  }
}