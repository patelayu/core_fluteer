
import 'package:flutter/material.dart';
import 'package:viva/Food%20pro.dart';
import 'package:viva/my_cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Food(),
        'Food_pro': (context) => const Food_pro(),
        'My_Cart': (context) => const My_Cart(),
      },
    ),
  );
}

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Get/organic food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Find the freshest food and get \n free delivery your town",
              style: TextStyle(
                color: Colors.white38,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.all(20),
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('Food_pro');
                    });
                  },
                  child: Text(
                    "Get Stared",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green.shade300,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: h * 0.56,
            width: w * 0.8,
            child: const ClipRect(
              child: const Image(
                image: AssetImage(
                  "images/shopping image.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green.shade500,
    );
  }
}






Page :- 2
import 'dart:math';
import 'package:flutter/material.dart';

class Food_pro extends StatefulWidget {
  const Food_pro({Key? key}) : super(key: key);

  @override
  State<Food_pro> createState() => _Food_proState();
}

class _Food_proState extends State<Food_pro> {
  // var selected = 0;

  List<Map> pro = [
    {
      'image': "images/vegtables.png",
      'foodName': "vegetabel",
    },
    {
      'image': "images/fruits.png",
      'foodName': "fruitss",
    },
    {
      'image': "images/greens.png",
      'foodName': "Greens",
    },
    {
      'image': "images/Mashrooms.png",
      'foodName': "Mashrooms",
    },
  ];

  List<Map> fruits = [
    {
      'image': "images/banana.png",
      'fruitsName': "Banana",
      'country': "Ecuador",
      'price': "﹩ 1.50",
    },
    {
      'image': "images/apple.png",
      'fruitsName': "apple",
      'country': "North America ",
      'price': "﹩ 2",
    },
    {
      'image': "images/grapes.png",
      'fruitsName': "grapes",
      'country': "USA",
      'price': "﹩ 4",
    },
    {
      'image': "images/pinepal.png",
      'fruitsName': "pinepal",
      'country': "South America",
      'price': "﹩ 0.89",
    },
    {
      'image': "images/strawberry.png",
      'fruitsName': "strawberry",
      'country': "France",
      'price': "﹩ 3.31 ",
    },
    {
      'image': "images/kiwi.png",
      'fruitsName': "Kiwi",
      'country': "Taiwan",
      'price': "﹩ 2.20",
    },
  ];

  List<Map> vegetables = [
    {
      'image': "images/chilly.png",
      'vegetablesName': "chilly",
      'country': "",
      'price': "₹ 71.50",
    },
    {
      'image': "images/karela.png",
      'vegetablesName': "karela",
      'country': " ",
      'price': "₹ 61.50",
    },
    {
      'image': "images/onion.png",
      'vegetablesName': "onion",
      'country': "",
      'price': "﹩ 2.68",
    },
    {
      'image': "images/poteto.png",
      'vegetablesName': "poteto",
      'country': "",
      'price': "﹩ 2.6",
    },
    {
      'image': "images/tometo.png",
      'vegetablesName': "tomato ",
      'country': "",
      'price': "﹩ 3.28",
    },
    {
      'image': "images/ginger.png",
      'vegetablesName': "ginger",
      'country': "Canada",
      'price': "﹩ 2.3",
    },
    {
      'image': "images/garlic.png",
      'vegetablesName': "garlic",
      'country': "India ",
      'price': "₹ 137.66",
    },
  ];

  List<Map> greens = [
    {
      'image': "images/palak.png",
      'greens': "palak",
      'country': "India",
      'price': "₹ 20",
    },
    {
      'image': "images/kobi.png",
      'greens': "kobi",
      'country': "Brassica oleracea",
      'price': "₹ 15.50",
    },
    {
      'image': "images/broccoli.png",
      'greens': "broccoli",
      'country': "Asia Minor",
      'price': "﹩ 1.05",
    },
    {
      'image': "images/bok_choy.png",
      'greens': "bok_choy",
      'country': "China",
      'price': "﹩ 1",
    },
    // {
    //   'image': "",
    //   'greens': "",
    //   'country': "",
    //   'price': "",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    Random random = Random();

    List<Color> myColors = [
      Colors.green.shade100,
      Colors.red.shade100,
      Colors.yellow.shade100,
      Colors.blue.shade100,
      Colors.amber.shade100,
      Colors.brown.shade100,
      Colors.greenAccent,
      Colors.deepPurple.shade100,
      Colors.purple.shade100,
      Colors.white10,
      Colors.orange.shade100,
    ];

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Text(
            "  <",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        title: const Text("Man's app"),
        actions: [
          Container(
            height: h * 0.1,
            width: w * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const ClipRect(
              child: Image(
                image: AssetImage(
                  "images/female.jpeg",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 390,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search foodsuffs",
                        hintStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: pro
                          .map(
                            (e) => InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, '/MyCart',
                                arguments: e);
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                              Border.all(color: Colors.black, width: 2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRect(
                                  child: Image(
                                    image: AssetImage("${e['image']}"),
                                    height: 60,
                                    width: 60,
                                  ),
                                ),
                                Text(
                                  "${e['foodName']}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Text(
                  "Popular Foodstuffs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "       View All",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: fruits
                      .map(
                        (e) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 270,
                      width: 200,
                      decoration: BoxDecoration(
                        color: myColors[random.nextInt(myColors.length)],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "fruits",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipRect(
                            child: Image(
                              image: AssetImage("${e['image']}"),
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Text(
                            "${e['fruitsName']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "${e['country']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "${e['price']}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.of(context)
                                        .pushNamed('My_Cart');
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: vegetables
                      .map(
                        (e) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: myColors[random.nextInt(myColors.length)],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "vegetables",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipRect(
                            child: Image(
                              image: AssetImage("${e['image']}"),
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Text(
                            "${e['vegetablesName']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "${e['country']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${e['price']}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: greens
                      .map(
                        (e) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: myColors[random.nextInt(myColors.length)],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "greens",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ClipRect(
                            child: Image(
                              image: AssetImage("${e['image']}"),
                              height: 150,
                              width: 150,
                            ),
                          ),
                          Text(
                            "${e['greens']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "${e['country']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${e['price']}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}