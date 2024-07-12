import 'package:flutter/material.dart';
import 'package:lab1/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "image_profile",
                child: ClipOval(
                  child: Image(
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    image: AssetImage(data.image),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                data.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Student ID: ${data.studentid}",
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 10),
              Text(
                "About Me",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                data.aboutMe,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                "Email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                data.email,
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              Text(
                "Social Media",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  // Handle social media link tap
                },
                child: Text(
                  data.socialMediaLink,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
