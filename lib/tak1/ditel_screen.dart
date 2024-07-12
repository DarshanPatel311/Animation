import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DitelScreen extends StatefulWidget {
  const DitelScreen({super.key});

  @override
  State<DitelScreen> createState() => _DitelScreenState();
}

class _DitelScreenState extends State<DitelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert_outlined,size: 35,)
        ],

      ),
      body: Hero(
          tag: '1',
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 120,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.alarm,size: 35,color:Color(0xffE67169),),
                ),
                SizedBox(height: 20,),
            
                Column(
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
                SizedBox(height: 20,),
                LinearProgressIndicator(
            
                  minHeight: 6,
                  value: 0.8,
                  color:  Color(0xffE67169),
                ),
                    SizedBox(height: 20,),
                  ],
                ),
                Text("Previus - Thu",style: TextStyle(
            
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 16
                ),),
                Row(
                  children: [
                    Checkbox(checkColor: Colors.white,activeColor: Color(0xffE67169),
                      value: true, onChanged: (value) {
            
                    },),
                    SizedBox(width: 10,),
                    Text("Meet Clients",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18
                    ),),
                   Spacer(),
                    Icon(Icons.alarm,color:Colors.grey ,size: 25,)
                  ],
                ),
                Row(
                  children: [
                    Checkbox(checkColor: Colors.white,activeColor: Color(0xffE67169),
                      value: true, onChanged: (value) {
            
                    },),
                    SizedBox(width: 10,),
                    Text("Meet Clients",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18
                    ),),
                   Spacer(),
                    Icon(Icons.alarm,color:Colors.grey ,size: 25,)
                  ],
                ),
                Row(
                  children: [
                    Checkbox(checkColor: Colors.white,activeColor: Color(0xffE67169),
                      value: true, onChanged: (value) {
            
                    },),
                    SizedBox(width: 10,),
                    Text("Meet Clients",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18
                    ),),
                   Spacer(),
                    Icon(Icons.alarm,color:Colors.grey ,size: 25,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
