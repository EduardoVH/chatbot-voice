import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Function to open URLs
  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZd4QNRY8bNxWB5WI1PXYQSwiWA6-kdq95vw&s',
                ),
              ),
              const SizedBox(height: 16),

              // Personal Information
              const Text(
                'Ingeniería en Software',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const Text(
                'Móviles II',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Nombre: Eduardo Vázquez Huerta',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                'Matrícula: 213377',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                'Grupo: 9B',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 16),

              // Link to Repository
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.link, color: Colors.blue),
                    onPressed: () =>
                        _launchURL('https://github.com/EduardoVH/chatbot-voice'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
