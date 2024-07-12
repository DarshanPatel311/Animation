import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ditel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE67169),
      appBar: AppBar(
        backgroundColor: Color(0xffE67169),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 32,
        ),
        title: Text(
          "TODO",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 32,
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 120, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff9E9D9E),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(4, 6))
                  ]),
            ),
            SizedBox(height: 20,),
            Text(
              "Hello, John.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Text(
              "This is a daliy quote\nYou have 10 takes to day.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.white54,
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => DitelScreen() ));
              },
              child: Hero(
                tag: '1',
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.alarm,size: 35,color:Color(0xffE67169),),
                          Spacer(),
                          Icon(Icons.more_vert_rounded,size: 30,color: Colors.grey),
                        ],
                      ),
                    ),
                      Spacer(),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("8 Task",style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.w400,
                             fontSize: 15,

                           ),),
                           Text("Custom",style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.w500,

                           ),),
                           LinearProgressIndicator(

                             minHeight: 6,
                             value: 0.8,
                             color:  Color(0xffE67169),
                           ),
                           SizedBox(height: 20,),
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
