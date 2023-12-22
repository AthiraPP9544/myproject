import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends GetxController {
  // Your controller logic here
}

class ThirdPageWidget extends StatelessWidget {
  final ThirdPage _controller = Get.put(ThirdPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 253),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,
            size: 30,
            color: Color.fromARGB(255, 1, 0, 0)), // Increased icon size
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add some space between the icon and text
            Text(
              '店舗プロフィール編集',
              style: TextStyle(
                fontSize: 17, // Set the desired font size
                fontWeight: FontWeight.bold, // Set the desired font weight
                color: Color.fromARGB(
                    255, 47, 46, 46), // Set the desired text color
              ),
            ),
            // Add some space between the text and icon
            // Bell icon after the text
          ],
        ),
        actions: [
          // You can add more icons/actions here if needed
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications,
                    size: 30,
                    color: Color.fromARGB(255, 7, 0, 0)), // Increased icon size
                onPressed: () {
                  // Add your edit button functionality here
                },
              ),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Text(
                    '99+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          // Row 1
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 300.0, top: 15),
                child: Text('店舗名*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  'Mer キッチン',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),

          // Row 3
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 275.0, top: 15),
                child: Text('代表担当者名*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  '林田　絵梨花',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          // Row 4
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 275.0, top: 15),
                child: Text('店舗電話番号*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  '123 - 4567 8910',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: const EdgeInsets.only(right: 300.0, top: 15),
                child: Text('店舗住所*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  '大分県豊後高田市払田791-13',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Container(
            child: Image.asset(
              'assets/images/map.png', // Replace 'your_image.png' with the actual path to your image asset
              width: 370, // Set the width of the image
              height: 300, // Set the height of the image
              fit: BoxFit
                  .cover, // Adjust the fit as needed (cover, contain, etc.)
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(right: 135.0),
              child: Text(
                '店舗外観*（最大3枚まで）',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/house.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          right: 21,
                          child: Text(
                            '×',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/house.png',
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          right: 21,
                          child: Text(
                            '×',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Image.asset(
                        'assets/images/Input.png', // Replace 'your_image.png' with the actual path to your image asset
                        width: 120, // Set the width of the image
                        height: 120, // Set the height of the image
                        fit: BoxFit
                            .cover, // Adjust the fit as needed (cover, contain, etc.)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 135.0),
              child: Text(
                '店舗内観*（1枚〜3枚ずつ追加してください）',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Input2.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Input2.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Image.asset(
                      'assets/images/Input2.png', // Replace 'your_image.png' with the actual path to your image asset
                      width: 120, // Set the width of the image
                      height: 120, // Set the height of the image
                      fit: BoxFit
                          .cover, // Adjust the fit as needed (cover, contain, etc.)
                    ),
                  ),
                ),
              ],
            ),
          ]),

          const SizedBox(
            height: 10,
          ),
          Container(
            child: const Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                '料理写真*（1枚〜3枚ずつ追加してください）',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/1 (1).png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/5.png',
                          width: 142,
                          height: 135,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        right: 21,
                        child: Text(
                          '×',
                          style: TextStyle(
                            fontSize: 34,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Image.asset(
                          'assets/images/3.png',
                          width: 135,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 21,
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: 34,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Text(
                'メニュー写真*（1枚〜3枚ずつ追加してくださ）',
                style: TextStyle(fontSize: 13.5),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'assets/images/1 (3).png',
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 21,
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: 34,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/4.png',
                          width: 130,
                          height: 135,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        right: 21,
                        child: Text(
                          '×',
                          style: TextStyle(
                            fontSize: 34,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Image.asset(
                          'assets/images/6.png',
                          width: 132,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 21,
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: 34,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(right: 290.0),
              child: Text(
                '営業時間*）',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 50),
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 94, 93, 93), // Set the border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                '10 : 00',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 65, 65, 64),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                  child: Text(
                    '〜',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, bottom: 50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 94, 93, 93), // Set the border color
                            width: 1.0, // Set the border width
                          ),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    '20 : 00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.arrow_downward_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 65, 65, 64),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),

          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 290.0, top: 2),
              child: Text(
                '営業時間*）',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 50),
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 94, 93, 93), // Set the border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                '11 : 00',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 65, 65, 64),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                  child: Text(
                    '〜',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, bottom: 50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 94, 93, 93), // Set the border color
                            width: 1.0, // Set the border width
                          ),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    '15 : 00',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    Icons.arrow_downward_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 65, 65, 64),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 290.0, bottom: 0),
              child: Text(
                '定休日*',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 94, 93, 93), // Set the border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                  child: Text(
                    '月',
                    style: TextStyle(fontSize: 20, ),
                  ),
                ),
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 94, 93, 93), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                    child: Text(
                      '火',
                      style:
                          TextStyle(fontSize: 20,),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 94, 93, 93), // Set the border color
                            width: 1.0, // Set the border width
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                      child: Text(
                        '水',
                        style: TextStyle(
                            fontSize: 20,),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, bottom: 40),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(
                                    255, 94, 93, 93), // Set the border color
                                width: 1.0, // Set the border width
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                          child: Text(
                            '木',
                            style: TextStyle(
                                fontSize: 20, ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ])
          ]),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 94, 93, 93), // Set the border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                  child: Text(
                    '金',
                    style: TextStyle(fontSize: 20, ),
                  ),
                ),
              ],
            ),
            Row(children: [
            Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), 
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, 
          color: Colors.white, 
        ),
      ),
    ),
  ],
),
              const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                    child: Text(
                      '土',
                      style:
                          TextStyle(fontSize: 20, ),
                    ),
                  ),
                ],
              ),
              Row(children: [
               Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), 
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, 
          color: Colors.white, 
        ),
      ),
    ),
  ],
),

                const Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                      child: Text(
                        '日',
                        style: TextStyle(
                            fontSize: 20, ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                   Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), // Set the background color
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, // Replace with the desired right answer icon
          color: Colors.white, // Set the color of the icon
        ),
      ),
    ),
  ],
),

                    const Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                          child: Text(
                            '祝',
                            style: TextStyle(
                                fontSize: 20, ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ])
          ]),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 275.0, top: 15),
                child: Text('  キャッチコピー*'),
              ),
            ],
          ),
          Row(
            children: [
              // Add widgets for the second row here
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set the border color
                      width: 1.0, // Set the border width
                    ),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(5.0)), // Set border radius
                  ),
                  padding:
                      const EdgeInsets.all(10.0), // Set padding for the content
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            '料理カテゴリー選択',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.arrow_downward_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 65, 65, 64),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(right: 290.0),
              child: Text(
                '予算*',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 50),
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 94, 93, 93), // Set the border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                '¥ 1,000',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                  child: Text(
                    '〜',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, bottom: 50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 94, 93, 93), // Set the border color
                            width: 1.0, // Set the border width
                          ),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    '¥ 2,000',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),

          // Row 3
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 275.0, top: 1),
                child: Text('  キャッチコピー*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  '美味しい！リーズナブルなオムライスランチ！',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          // Row 4
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the first row here
              Padding(
                padding: EdgeInsets.only(right: 300.0, top: 15),
                child: Text('座席数*'),
              ),
            ],
          ),
          // Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Add widgets for the second row here
              Container(
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)), // Set border radius
                ),
                padding:
                    const EdgeInsets.all(10.0), // Set padding for the content
                child: const Text(
                  '40席',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 290.0, bottom: 0),
              child: Text(
                '定休日*',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          Row(children: [
             Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), 
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, 
          color: Colors.white, 
        ),
      ),
    ),
  ],
),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                  child: Text(
                    '有',
                    style: TextStyle(fontSize: 20,),
                  ),
                ),
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 94, 93, 93), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                    child: Text(
                      '無',
                      style:
                          TextStyle(fontSize: 20,),
                    ),
                  ),
                ],
              ),
            ])
          ]),
          Row(children: [
             Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), 
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, 
          color: Colors.white, 
        ),
      ),
    ),
  ],
),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                  child: Text(
                    '有',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 40),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 94, 93, 93), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                    child: Text(
                      '無',
                      style:
                          TextStyle(fontSize: 20,),
                    ),
                  ),
                ],
              ),
            ])
          ]),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              Padding(
                padding: EdgeInsets.only(right: 235.0, top: 0),
                child: Text('来店プレゼント*'),
              ),
            ],
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 290.0, top: 5.0),
              child: Text(
                '定休日*',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Row(children: [
            Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 40),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 225, 132, 10), 
          border: Border.all(
            color: const Color.fromARGB(255, 94, 93, 93),
            width: 1.0,
          ),
        ),
        child: Icon(
          Icons.check, 
          color: Colors.white, 
        ),
      ),
    ),
  ],
),
            const Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, bottom: 50),
                  child: Text(
                    '有（最大３枚まで）',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 40),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 94, 93, 93), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, bottom: 45),
                    child: Text(
                      '無',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ])
          ]),

          Row(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/i1 (1).png',
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        right: 21,
                        child: Text(
                          '×',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/i1 (2).png',
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 21,
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/i1 (3).png',
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        right: 21,
                        child: Text(
                          '×',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
          const SizedBox(height: 15,),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(right: 240.0),
              child: Text(
                '予来店プレゼント名*',
                style: TextStyle(fontSize: 15.5),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 370,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 85.0),
                            child: Text(
                              '料理カテゴリー選択',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                child: Container(
                  width: 370,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 243, 181, 101),
                        Color.fromARGB(255, 238, 112, 15)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 120.0),
                            child: Text(
                              '編集を保存',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
