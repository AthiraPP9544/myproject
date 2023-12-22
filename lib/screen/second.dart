import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends GetxController {}

class SecondPageW extends StatelessWidget {
  final SecondPage _controller = Get.put(SecondPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color.fromARGB(255, 168, 177, 255),
        body: Stack(children: [
          LayoutBuilder(builder: (context, constraints) {
            double containerWidth =
                constraints.maxWidth < 400 ? constraints.maxWidth : 450.0;

            return Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 52),
              child: Column(children: [
                Row(
                  children: [
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color.fromARGB(255, 153, 162, 245),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                            color: Color.fromARGB(255, 252, 253, 253),
                          ),
                        ),
                      ),
                    ]),
                    // Adjust spacing between container and icons
                    Padding(
                      padding: EdgeInsets.only(right: 50.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:60.0),
                            child: Text(
                              'スタンプカード詳細',
                              style: TextStyle(color: Colors.white,
                              fontSize: 18),
                            ),
                          ),
                          // Add more widgets as needed
                        ],
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 168, 177, 255),
                          ),
                          child: Icon(
                            Icons.remove_circle_outline,
                            size: 40,
                            color: Color.fromARGB(255, 254, 254, 254),
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          children: [
                            Text(
                              'Mer キッチン',
                              style: TextStyle(color: Colors.white,
                              ),
                            ),
                            // Add more widgets as needed
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 110.0),
                        child: Column(
                          children: [
                            Text(
                              '現在の獲得数',
                              style: TextStyle(color: Colors.white),
                            ),
                            // Add more widgets as needed
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Column(
                          children: [
                            Text(
                              '30',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 27,fontWeight: FontWeight.bold,),
                            ),
                            // Add more widgets as needed
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14.0),
                        child: Column(
                          children: [
                            Text(
                              '個',
                              style: TextStyle(color: Colors.white),
                            ),
                            // Add more widgets as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 280,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 253, 253),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, top: 8),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 270,
                                width: 380,
                                child: Image.asset(
                                  'assets/images/star.png', // Replace with the path to your asset image
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, top: 8),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 270,
                                width: 380,
                                child: Image.asset(
                                  'assets/images/star.png', 
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 39,),
               Container(
            height: 400, // Adjust the height as needed
            width: double.infinity,
            color: Color.fromARGB(255, 254, 252, 252),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
  height: 80,
  width: double.infinity,
  margin: EdgeInsets.symmetric(vertical: 10),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 163, 158, 158), // Set the color of the border
        width: 2.0,           // Set the width of the border
      ),
    ),
  ),
  child: Column(
    children: [
      Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0,left: 25),
            child: Text(
              '2021 / 11 / 18',
              style: TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontSize: 18),
            ),
          ),
         
        ],
      ),
      Row(
        
        children: [
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(top:5.0,left: 25),
                child: Text(
                  'スタンプを獲得しました。',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0), fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Column(
              children: [
                Text(
                  '1 個',
                  style: TextStyle(color: const Color.fromARGB(255, 9, 0, 0), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
),

                 Container(
  height: 80,
  width: double.infinity,
  
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    border: Border(
      bottom: BorderSide(
       color: Color.fromARGB(255, 163, 158, 158), // Set the color of the border
        width: 2.0,           // Set the width of the border
      ),
    ),
  ),
  child: Column(
    children: [
      Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0,left: 25),
            child: Text(
              '2021 / 11 / 17',
              style: TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontSize: 18),
            ),
          ),
         
        ],
      ),
      Row(
        
        children: [
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(top:5.0,left: 25),
                child: Text(
                  'スタンプを獲得しました。',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0), fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Column(
              children: [
                Text(
                  '1 個',
                  style: TextStyle(color: const Color.fromARGB(255, 9, 0, 0), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
),
                 Container(
  height: 80,
  
  margin: EdgeInsets.symmetric(vertical: 10),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    border: Border(
      bottom: BorderSide(
      color: Color.fromARGB(255, 163, 158, 158),// Set the color of the border
        width: 2.0,           // Set the width of the border
      ),
    ),
  ),
  child: Column(
    children: [
      Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0,left: 25),
            child: Text(
              '2021 / 11 / 16',
              style: TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontSize: 18),
            ),
          ),
         
        ],
      ),
      Row(
        
        children: [
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(top:2.0,left: 25),
                child: Text(
                  'スタンプを獲得しました。',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0), fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Column(
              children: [
                Text(
                  '1 個',
                  style: TextStyle(color: const Color.fromARGB(255, 9, 0, 0), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
),
                 Container(
  height: 80,
 
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 163, 158, 158), // Set the color of the border
        width: 2.0,           // Set the width of the border
      ),
    ),
  ),
  child: Column(
    children: [
      Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0,left: 25),
            child: Text(
              '2021 / 11 / 18',
              style: TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontSize: 18),
            ),
          ),
         
        ],
      ),
      Row(
        
        children: [
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(top:0.0,left: 25),
                child: Text(
                  'スタンプを獲得しました。',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0), fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Column(
              children: [
                Text(
                  '1 個',
                  style: TextStyle(color: const Color.fromARGB(255, 9, 0, 0), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
),
 Container(
  height: 80,
  width: double.infinity,

  decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 163, 158, 158), // Set the color of the border
        width: 2.0,           // Set the width of the border
      ),
    ),
  ),
  child: Column(
    children: [
      Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0,left: 25),
            child: Text(
              '2021 / 11 / 18',
              style: TextStyle(color: Color.fromARGB(255, 129, 127, 127), fontSize: 18),
            ),
          ),
         
        ],
      ),
      Row(
        
        children: [
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(top:0.0,left: 25),
                child: Text(
                  'スタンプを獲得しました。',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0), fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Column(
              children: [
                Text(
                  '1 個',
                  style: TextStyle(color: const Color.fromARGB(255, 9, 0, 0), fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
),
                
                ],
              ),))]),
            );
          }),
          Positioned(
            top: 425,
            left: 340,
            right: 12,
            child: Container(
              height: 40,
              child: Center(
                child: Text(
                  '2 / 2枚目',
                  style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0)),
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 253, 253),
   
  ),
             
                child: Padding(
                  padding: const EdgeInsets.only(left:25.0,top: 5),
                  child: Text(
                    'スタンプ獲得履歴',
                    style: TextStyle(color: const Color.fromARGB(255, 8, 0, 0)),
                  ),
                ),
              ),
            ),
          
        ]));
  }
}
