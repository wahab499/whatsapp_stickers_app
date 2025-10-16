import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: const Text(
          'Islamic Stickers',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/trending');
            },
            icon: const Icon(Icons.trending_up, color: Colors.white),
            tooltip: 'Trending Stickers',
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🌙 Category Tabs
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoryChip(label: 'Greetings'),
                    CategoryChip(label: 'Events'),
                    CategoryChip(label: 'Duas'),
                    CategoryChip(label: 'Tasbeeh'),
                    CategoryChip(label: 'Places'),
                    CategoryChip(label: 'Quran'),
                    CategoryChip(label: 'Hadith'),
                  ],
                ),
              ),
            ),

            // 🌸 Section Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Popular Collections',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // 🌙 Circular Category Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleCategory(
                    image: Image.asset('assets/images/rockfunny.png'),
                    label: 'Funny',
                  ),
                  CircleCategory(
                    image: Image.asset('assets/images/rockfunny.png'),
                    label: 'Urdu',
                  ),
                  CircleCategory(
                    image: Image.asset('assets/images/rockfunny.png'),
                    label: 'Eid',
                  ),
                  CircleCategory(
                    image: Image.asset('assets/images/rockfunny.png'),
                    label: 'Ramadan',
                  ),
                ],
              ),
            ),

            // 🕋 Featured Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Featured Stickers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // 🕊️ Sticker Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  StickerCard('assets/images/rockfunny.png', 'Bismillah'),
                  StickerCard('assets/images/rockfunny.png', 'SubhanAllah'),
                  StickerCard('assets/images/rockfunny.png', 'InshaAllah'),
                  StickerCard('assets/images/rockfunny.png', 'Alhamdulillah'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 🌿 Small Components Below

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.green.shade800,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class CircleCategory extends StatelessWidget {
  final Image image;
  final String label;

  const CircleCategory({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Colors.greenAccent, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: CircleAvatar(radius: 37, backgroundImage: image.image),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class StickerCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const StickerCard(this.imagePath, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
