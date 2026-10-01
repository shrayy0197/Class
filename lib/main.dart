import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // TOP ICONS
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.history),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),

              // RECENTLY PLAYED
              const Text(
                'Recently played',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  artistCard(
                    'Lana Del Rey',
                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=300',
                  ),
                  const SizedBox(width: 25),
                  artistCard(
                    'Marvin Gaye',
                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=300',
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // SPOTIFY WRAPPED
              const Text(
                'SPOTIFY WRAPPED',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                'Your 2021 in review',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 14),

              // TOP SONGS
              Row(
                children: [
                  playlistCard(
                    'Your Top Songs 2021',
                    'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=500',
                  ),
                  const SizedBox(width: 14),
                  playlistCard(
                    'Your Artists Revealed',
                    'https://images.unsplash.com/photo-1516280440614-37939bbacd81?w=500',
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // EDITOR'S PICKS
              const Text(
                "Editor's picks",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  playlistCard(
                    "Editor's Pick",
                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=500',
                  ),
                  const SizedBox(width: 14),
                  playlistCard(
                    'Front Left',
                    'https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?w=500',
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget artistCard(String name, String image) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              image,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }

  Widget playlistCard(String title, String image) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 0.78,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}