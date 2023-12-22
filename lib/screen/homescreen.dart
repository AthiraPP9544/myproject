import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isIcon1Pressed = false.obs;
  var isIcon2Pressed = false.obs;
  var isIcon3Pressed = false.obs;
}

class HomeScreen extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 227, 227),
        body: Stack(children: [
          LayoutBuilder(builder: (context, constraints) {
            double containerWidth =
                constraints.maxWidth < 400 ? constraints.maxWidth : 450.0;

            return Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 52),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 0),
                            child: Container(
                              width: 300,
                              height: 42,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 204, 205, 206),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 10),
                                child: Text(
                                  '北海道, 札幌市',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 3, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Adjust spacing between container and icons
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/volumn.png',
                            height: 35.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(
                          width: 5.0), // Adjust spacing between icons
                      const Column(
                        children: [
                          Icon(Icons.favorite_border,
                              size: 38.0,
                              color: Color.fromARGB(255, 186, 12, 23)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                      height:
                          20.0), 
                  Container(
                    width: constraints
                        .maxWidth, 
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 180, 106, 10),
                    ),
                    child: Center(
                      child: Text(
                        '2022年 5月 26日（木）',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 6, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          20.0), 
                 SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20),
    child: Container(
      width: 450, 
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30, 
        itemBuilder: (context, index) {
          int day = (index % 31) + 26; 
          if (day > 31) {
            day -= 31; 
          }

         
          List<String> firstColumnTexts = ['木', '水', '金', '土', '日']; 
         

          return Column(
            children: [
              Container(
                width: 50,
                height: 100,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          firstColumnTexts[index % firstColumnTexts.length],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 11, 10, 10),
                          ),
                        ),
                      ),
                      decoration: index == 0
                          ? BoxDecoration(
                              color: Color.fromARGB(255, 214, 137, 13),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(index == 0 ? 20.0 : 0.0),
                                topRight: Radius.circular(index == 0 ? 20.0 : 0.0),
                                bottomLeft: Radius.circular(index == 29 ? 20.0 : 0.0),
                                bottomRight: Radius.circular(index == 29 ? 20.0 : 0.0),
                              ),
                            )
                          : null,
                    ),
                    Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          '$day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 13, 0, 0),
                          ),
                        ),
                      ),
                      decoration: index == 0
                          ? BoxDecoration(
                              color: Color.fromARGB(255, 214, 137, 13),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(index == 29 ? 20.0 : 0.0),
                                topRight: Radius.circular(index == 29 ? 20.0 : 0.0),
                                bottomLeft: Radius.circular(index == 0 ? 20.0 : 0.0),
                                bottomRight: Radius.circular(index == 0 ? 20.0 : 0.0),
                              ),
                            )
                          : null,
                    ),
                    
                  
                  ],
                ),
              ),
              const SizedBox(width: 5),
            ],
          );
        },
      ),
    ),
  ),
),

                  const SizedBox(height: 15.0),

                  Container(
                    height: 500, 
                    color: Color.fromARGB(255, 225, 223, 223),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        Stack(
                          children: [
                            Container(
                              height: 420,
                              width: 380,
                              color: Color.fromARGB(255, 254, 255, 255),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 0.0, left: 0),
                                        child: Container(
                                          width: 380,
                                          height: 230,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                20), 
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/first.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '   介護有料老人ホームひまわり倶楽部の介護職／ヘ\n  ルパー求人（パート／バイト）',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 5, 0, 0),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Container(
                                          height: 31,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 235, 200,
                                                227), // Add your desired color
                                            borderRadius: BorderRadius.circular(
                                                5), // Add your desired radius
                                          ),
                                          child: const Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0, top: 5),
                                                child: Text(
                                                  '介護付き有料老人ホーム',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 223, 147, 47),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120.0, top: 2),
                                        child: Column(
                                          children: [
                                            Text(
                                              '¥ 6,000',
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 11, 0, 0),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Text(
                                          '  5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 13, 0, 0),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Text(
                                          '  北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 13, 0, 0),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, top: 2),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0, top: 10),
                                              child: Text(
                                                '住宅型有料老人ホームひまわり倶楽部',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 110, 110, 109),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 55.0, top: 5),
                                          child: Column(
                                            children: [
                                              Obx(() => GestureDetector(
                                                    onTap: () {
                                                      _controller.isIcon1Pressed
                                                          .toggle(); // Toggle the state when tapped
                                                    },
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          _controller
                                                                  .isIcon1Pressed
                                                                  .isTrue
                                                              ? Icons.favorite
                                                              : Icons
                                                                  .favorite_border, // Use filled or outlined heart icon based on the state
                                                          size: 38.0,
                                                          color: _controller
                                                                  .isIcon1Pressed
                                                                  .isTrue
                                                              ? Colors.red
                                                              : Color.fromARGB(
                                                                  255,
                                                                  186,
                                                                  12,
                                                                  23),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 160, 
                              left: 0, 
                              child: Container(
                                width: 75,
                                height: 30,
                                color: const Color.fromARGB(255, 225, 52,
                                    52), 
                                child: const Center(
                                  child: Text(
                                    '本日まで',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 380,
                                  height: 450,
                                  color:
                                      const Color.fromARGB(255, 254, 255, 255),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0.0, left: 0),
                                            child: Container(
                                              width: 380,
                                              height: 230,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(
                                                    20), // Adjust the radius as needed
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/second.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '   介護有料老人ホームひまわり倶楽部の介護職／ヘ\n  ルパー求人（パート／バイト）',
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 5, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0, top: 5),
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255,
                                                    235,
                                                    200,
                                                    227), // Add your desired color
                                                borderRadius: BorderRadius.circular(
                                                    5), // Add your desired radius
                                              ),
                                              child: const Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0, top: 5),
                                                    child: Text(
                                                      '介護付き有料老人ホーム',
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 223, 147, 47),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: const EdgeInsets.only(
                                                left: 135.0, top: 5),
                                            child: Column(
                                              children: [
                                                Text(
                                                  '¥ 6,000',
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 1, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              '  5月 31日（水）08 : 00 ~ 17 : 00',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 13, 0, 0),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              '  北海道札幌市東雲町3丁目916番地17号',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 13, 0, 0),
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.0, top: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.0, top: 10),
                                                  child: Text(
                                                    '住宅型有料老人ホームひまわり倶楽部',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 110, 110, 109),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55.0, top: 5),
                                              child: Column(
                                                children: [
                                                  Obx(() => GestureDetector(
                                                        onTap: () {
                                                          _controller
                                                              .isIcon2Pressed
                                                              .toggle(); // Toggle the state when tapped
                                                        },
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                              _controller
                                                                      .isIcon2Pressed
                                                                      .isTrue
                                                                  ? Icons
                                                                      .favorite
                                                                  : Icons
                                                                      .favorite_border, // Use filled or outlined heart icon based on the state
                                                              size: 38.0,
                                                              color: _controller
                                                                      .isIcon2Pressed
                                                                      .isTrue
                                                                  ? Colors.red
                                                                  : Color
                                                                      .fromARGB(
                                                                          255,
                                                                          186,
                                                                          12,
                                                                          23),
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 160, // Adjust the top position as needed
                                  left: 0, // Adjust the left position as needed
                                  child: Container(
                                    width: 75,
                                    height: 30,
                                    color: const Color.fromARGB(255, 225, 52,
                                        52), // Adjust the background color and opacity as needed
                                    child: Center(
                                      child: Text(
                                        '本日まで',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 450,
                                  width: 380,
                                  color:
                                      const Color.fromARGB(255, 250, 250, 251),
                                  margin:const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0, left: 10),
                                            child: Container(
                                              width: 360,
                                              height: 230,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(
                                                    20), // Adjust the radius as needed
                                                image:const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/first.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    const  Row(
                                        children: [
                                          Text(
                                            '   介護有料老人ホームひまわり倶楽部の介護職／ヘ\n  ルパー求人（パート／バイト）',
                                            style: TextStyle(
                                                color:  Color.fromARGB(
                                                    255, 5, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0, top: 5),
                                            child: Container(
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color:const Color.fromARGB(
                                                    255,
                                                    235,
                                                    200,
                                                    227), // Add your desired color
                                                borderRadius: BorderRadius.circular(
                                                    5), // Add your desired radius
                                              ),
                                              child:const Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                         EdgeInsets.only(
                                                            left: 5.0, top: 5),
                                                    child: Text(
                                                      '介護付き有料老人ホーム',
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 223, 147, 47),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        const  Padding(
                                            padding:  EdgeInsets.only(
                                                left: 135.0, top: 5),
                                            child: Column(
                                              children: [
                                                Text(
                                                  '¥ 6,000',
                                                  style: TextStyle(
                                                      color:
                                                           Color.fromARGB(
                                                              255, 5, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                     const Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              '  5月 31日（水）08 : 00 ~ 17 : 00',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 13, 0, 0),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    const  Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              '  北海道札幌市東雲町3丁目916番地17号',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 13, 0, 0),
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                         const Padding(
                                            padding:  EdgeInsets.only(
                                                left: 5.0, top: 5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                       EdgeInsets.only(
                                                          left: 5.0, top: 10),
                                                  child: Text(
                                                    '住宅型有料老人ホームひまわり倶楽部',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 110, 110, 109),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55.0, top: 5),
                                              child: Column(
                                                children: [
                                                  Obx(() => GestureDetector(
                                                        onTap: () {
                                                          _controller
                                                              .isIcon3Pressed
                                                              .toggle(); // Toggle the state when tapped
                                                        },
                                                        child: Column(
                                                          children: [
                                                            Icon(
                                                              _controller
                                                                      .isIcon3Pressed
                                                                      .isTrue
                                                                  ? Icons
                                                                      .favorite
                                                                  : Icons
                                                                      .favorite_border, // Use filled or outlined heart icon based on the state
                                                              size: 38.0,
                                                              color: _controller
                                                                      .isIcon3Pressed
                                                                      .isTrue
                                                                  ? Colors.red
                                                                  : Color
                                                                      .fromARGB(
                                                                          255,
                                                                          186,
                                                                          12,
                                                                          23),
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 160,
                                  left: 0,
                                  child: Container(
                                    width: 75,
                                    height: 30,
                                    color: const Color.fromARGB(255, 225, 52,
                                        52), // Adjust the background color and opacity as needed
                                    child: Center(
                                      child: Text(
                                        '本日まで',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),

                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Icon 1
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 214, 90,
                                    22), // Set the color for the icon
                              ),
                              onPressed: () {
                                // Handle icon 1 tap
                              },
                            ),
                            Text(
                              'さがす',
                              style: TextStyle(
                                color: Color.fromARGB(255, 214, 90,
                                    22), // Set the color for the text
                              ),
                            ),
                          ],
                        ),
                        // Icon 2

                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.business,
                                color: const Color.fromARGB(255, 3, 12,
                                    3), // Set the color for the icon
                              ),
                              onPressed: () {
                                // Handle icon 2 tap
                              },
                            ),
                            Text(
                              'お仕事',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 10,
                                    1), // Set the color for the text
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        // Icon 3
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.chat,
                                color: const Color.fromARGB(
                                    255, 7, 3, 3), // Set the color for the icon
                              ),
                              onPressed: () {
                                // Handle icon 3 tap
                              },
                            ),
                            Text(
                              'チャット',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 10, 4,
                                    4), // Set the color for the text
                              ),
                            ),
                          ],
                        ),
                        // Icon 4
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.person_2_outlined,
                                size: 40,
                                color: const Color.fromARGB(
                                    255, 2, 0, 2), // Set the color for the icon
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              ' マイページ',
                              style: TextStyle(
                                color: const Color.fromARGB(
                                    255, 5, 0, 5), // Set the color for the text
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          Positioned(
            top: 720,
            left: 358,
            right: 12,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 254, 254, 255),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/Vector.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: 670,
            left: 10,
            right: 50,
            child: Image.asset(
              'assets/images/image.png',
              width: 250,
              height: 250,
            ),
          ),
        ]));
  }
}
