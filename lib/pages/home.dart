import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('App Name'))),
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
        ],
      ),
    );
  }
}
