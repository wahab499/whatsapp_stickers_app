import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text('App Name', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Home', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Anime', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Wishes', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('LOL', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Animal', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Kpop', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Sports', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Games', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Marvel', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleCategory(
                  Image.asset('assets/images/rockfunny.png'),
                  "Funny",
                ),
                CircleCategory(
                  Image.asset('assets/images/rockfunny.png'),
                  "Indian",
                ),
                CircleCategory(
                  Image.asset('assets/images/rockfunny.png'),
                  "Urdu",
                ),
                CircleCategory(
                  Image.asset('assets/images/rockfunny.png'),
                  "Meems",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget CircleCategory(Image image, String label) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: CircleAvatar(radius: 37, backgroundImage: image.image),
        ),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    ),
  );
}
