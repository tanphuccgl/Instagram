import 'package:flutter/material.dart';

class MenuProfile {
  final String title;
  final IconData icon;

  MenuProfile({required this.title, required this.icon});
}

List<MenuProfile> menuProfile = [
  MenuProfile(title: 'Settings', icon: Icons.abc),
  MenuProfile(title: 'Archive', icon: Icons.abc),
  MenuProfile(title: 'Your activity', icon: Icons.abc),
  MenuProfile(title: 'QR code', icon: Icons.abc),
  MenuProfile(title: 'Saved', icon: Icons.abc),
  MenuProfile(title: 'Close Friends', icon: Icons.abc),
  MenuProfile(title: 'COVID-19 Information Center', icon: Icons.abc),
];

List<MenuProfile> createProfile = [
  MenuProfile(title: 'Post', icon: Icons.abc),
  MenuProfile(title: 'Reel', icon: Icons.abc),
  MenuProfile(title: 'Story', icon: Icons.abc),
  MenuProfile(title: 'Story Highlight', icon: Icons.abc),
  MenuProfile(title: 'Live', icon: Icons.abc),
  MenuProfile(title: 'Guide', icon: Icons.abc),
];
