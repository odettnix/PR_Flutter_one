import 'package:flutter/material.dart';
import 'package:flutter_application_1/meditate_two.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class MediateOne extends StatefulWidget {
  const MediateOne({Key? key}) : super(key: key);

  @override
  State<MediateOne> createState() => _MediateOneState();
}

class _MediateOneState extends State<MediateOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
       height: 866,
      // width: 390,
      decoration: const BoxDecoration(
      color: Colors.white,
      ),
      
      child: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 53.0),
            ),

            Stack(
              children: <Widget>[
              SvgPicture.asset("assets/fon_one.svg", width: 343, height: 231),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SvgPicture.asset("assets/human.svg", width: 343, height: 219),
              )
              ],
            ),

            

            Container(
              margin: const EdgeInsets.only(top: 15.0, left: 36.0),
              alignment: Alignment.topLeft,
              child: const Text('Peter Mach', 
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 112, 112, 112),
              ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 3.0, left: 36.0),
              alignment: Alignment.topLeft,
              child: const Text('Mind Deep Relax', 
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 10.0, right: 5.0),
              width: 334,
              alignment: Alignment.topLeft,
              child: const Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.', 
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 24.0),
            ),

            ElevatedButton.icon(
              icon: SvgPicture.asset("assets/shape.svg", width: 10.5, height: 12,),
              style: ElevatedButton.styleFrom(
              primary: const Color(0xff039EA2),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), 
              ),
              padding: const EdgeInsets.fromLTRB(92.5, 20, 92.5, 20),
              elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MeditateTwo()));
               },
              
              label: const Text('Play Next Session', style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 24.0),
              width: 330,
              height: 73,
             
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffEBEBEB),
                    width: 0.5),
                ),
              ),
              
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: SvgPicture.asset("assets/mini_play_one.svg"),
                        iconSize: 42,
                        onPressed: () { },
                      )
                    ]
                  ),

                    SizedBox(
                      width: 264,
                      height: 45,
                      
                      child: Column(
                  
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 13.0,),
                            alignment: Alignment.topLeft,
                            child: const Text('Sweet Memories',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1E1E1E)
                            ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 2.0, left: 13.0),
                            alignment: Alignment.topLeft,
                            child: const Text('December 29 Pre-Launch', 
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 124, 124, 124)
                            ),
                            ),

                            
                          ),
                        ]
                      ),
                    ),
                     
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: SvgPicture.asset("assets/Group.svg", width: 22, height: 6),
                    onPressed: () { },
                    ),
                ]
              ),
            ),

            Container(
              
              width: 330,
              height: 73,
             
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffEBEBEB),
                    width: 0.5),
                ),
              ),
              
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: SvgPicture.asset("assets/mini_play_two.svg"),
                        iconSize: 42,
                        onPressed: () { },
                      )
                    ]
                  ),

                    SizedBox(
                      width: 264,
                      height: 45,
                      
                      child: Column(
                  
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 13.0,),
                            alignment: Alignment.topLeft,
                            child: const Text('A Day Dream',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1E1E1E)
                            ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 2.0, left: 13.0),
                            alignment: Alignment.topLeft,
                            child: const Text('December 29 Pre-Launch', 
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 124, 124, 124)
                            ),
                            ),

                            
                          ),
                        ]
                      ),
                    ),
                     
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: SvgPicture.asset("assets/Group.svg", width: 22, height: 6),
                    onPressed: () { },
                    ),
                ]
              ),
            ),

            Container(
              width: 330,
              height: 73,
             
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffEBEBEB),
                    width: 0.5),
                ),
              ),
              
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: SvgPicture.asset("assets/mini_play_three.svg"),
                        iconSize: 42,
                        onPressed: () { },
                      )
                    ]
                  ),

                    SizedBox(
                      width: 264,
                      height: 45,
                      
                      child: Column(
                  
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 13.0,),
                            alignment: Alignment.topLeft,
                            child: const Text('Mind Explore',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1E1E1E)
                            ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 2.0, left: 13.0),
                            alignment: Alignment.topLeft,
                            child: const Text('December 29 Pre-Launch', 
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 124, 124, 124)
                            ),
                            ),

                            
                          ),
                        ]
                      ),
                    ),
                     
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: SvgPicture.asset("assets/Group.svg", width: 22, height: 6),
                    onPressed: () { },
                    ),
                ]
              ),
            ),



            

        ]
      ),
      ),
      ),
      
    );
  }
}