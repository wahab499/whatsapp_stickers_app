import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isDropdownOpen = false;
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    final trendingStickers = [
      {'image': 'assets/images/rockfunny.png', 'title': 'Bismillah'},
      {'image': 'assets/images/rockfunny.png', 'title': 'SubhanAllah'},
      {'image': 'assets/images/rockfunny.png', 'title': 'InshaAllah'},
      {'image': 'assets/images/rockfunny.png', 'title': 'Alhamdulillah'},
    ];

    final stickerPacks = [
      {'title': 'Ramadan Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Eid Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Muharram Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Bakra Eid Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Duas Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Greetings Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Lovely Pack', 'image': 'assets/images/rockfunny.png'},
      {'title': 'Respect Pack', 'image': 'assets/images/rockfunny.png'},
    ];

    final width = MediaQuery.of(context).size.width;

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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🌿 Category Tabs
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

              // 🌙 Popular Collections
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Popular Collections',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
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

              // 🔥 Trending Stickers
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Trending Stickers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        trendingStickers.take(10).map((sticker) {
                          return Container(
                            width: 130,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 10,
                            ),
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(height: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    sticker['image']!,
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  sticker['title']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_rounded,
                                      size: 18,
                                    ),
                                    label: const Text(
                                      "Add",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green.shade600,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ),

              //📦 Sticker Packs
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Sticker Packs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              // Add this state variable at the top of your widget
              ListView.builder(
                itemCount: stickerPacks.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final pack = stickerPacks[index];
                  final isSelected = _selectedIndex == index;
                  final isDropdownOpen = isSelected && _isDropdownOpen;

                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    padding: const EdgeInsets.all(12),
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
                      children: [
                        // Main content row
                        Row(
                          children: [
                            // Image - Clickable
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_selectedIndex == index &&
                                      _isDropdownOpen) {
                                    _isDropdownOpen = false;
                                  } else {
                                    _selectedIndex = index;
                                    _isDropdownOpen = true;
                                  }
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // border:
                                    //     isSelected
                                    //         ? Border.all(
                                    //           color: Colors.blue.shade400,
                                    //           width: 2,
                                    //         )
                                    //         : null,
                                  ),
                                  child: Image.asset(
                                    pack['image']!,
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),

                            // Title - Clickable and Expanded
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_selectedIndex == index &&
                                        _isDropdownOpen) {
                                      _isDropdownOpen = false;
                                    } else {
                                      _selectedIndex = index;
                                      _isDropdownOpen = true;
                                    }
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pack['title']!,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        // color:
                                        //     isSelected
                                        //         ? Colors.blue.shade600
                                        //         : Colors.black,
                                      ),
                                    ),
                                    if (isDropdownOpen)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Colors.blue.shade400,
                                          size: 20,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),

                            // Add Pack Button
                            ElevatedButton.icon(
                              onPressed: () {
                                // TODO: Add pack to WhatsApp
                              },
                              icon: const Icon(Icons.add, size: 18),
                              label: const Text('Add Pack'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade600,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Dropdown Section with smooth animation
                        if (isDropdownOpen)
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                              ),
                              child: Column(children: [
                                 
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🌿 Category Chip
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
          fontSize: 15,
          color: Colors.green.shade800,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// 🌙 Circular Category
class CircleCategory extends StatelessWidget {
  final Image image;
  final String label;

  const CircleCategory({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
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
          child: CircleAvatar(radius: 34, backgroundImage: image.image),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
