import 'package:flutter/material.dart';
import 'package:whatsapp_sticker_app/pages/create_sticker.dart';
import 'package:whatsapp_sticker_app/pages/home.dart';
import 'package:whatsapp_sticker_app/pages/profile.dart';
import 'package:whatsapp_sticker_app/pages/search.dart';
import 'package:whatsapp_sticker_app/pages/trending.dart';

class BtmNavBar extends StatefulWidget {
  final int index;
  const BtmNavBar({super.key, required this.index});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int selectedindex = 0;

  @override
  void initState() {
    super.initState();
    selectedindex = widget.index;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Home(),
      Search(),
      CreateSticker(),
      Trending(),
      Profile(),
    ];
    return Scaffold(
      body: IndexedStack(index: selectedindex, children: _pages),
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem('assets/icons/home.png', 'Home', 0),
              _buildNavItem('assets/icons/search.png', 'Search', 1),
              _buildNavItem('assets/icons/add.png', 'Add', 2),
              _buildNavItem('assets/icons/trending.png', 'Trending', 3),
              _buildNavItem('assets/icons/profile.png', 'Profile', 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String iconPath, String label, int index) {
    bool isSelected = selectedindex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 34,
            width: 34,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.blueAccent : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(iconPath),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.blueAccent : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
