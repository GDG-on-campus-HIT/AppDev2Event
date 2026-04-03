import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text("My Portfolio"),
        backgroundColor: Colors.grey,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ===== HEADER =====
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[900],

                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgESZ_f0Qzj0CR8DgKzpvLZr16LNChBtJKQjnK18MQ2v9Rddvkn85t5C5LIgQeY88McieRg&s=10",
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Roshan Singh",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),

                    const Text(
                      "Flutter Developer",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ===== SKILLS =====
              const Text(
                "My Skills",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

              const SizedBox(height: 10),

              Row(
                children: [

                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text("Flutter",
                        style: TextStyle(color: Colors.white)),
                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text("Dart",
                        style: TextStyle(color: Colors.white)),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text("Firebase",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ===== PROJECTS =====
              const Text(
                "Projects",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

              const SizedBox(height: 10),

              // Project 1
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                color: Colors.grey[900],

                child: Row(
                  children: const [
                    Icon(Icons.cloud, color: Colors.orange),
                    SizedBox(width: 10),
                    Text("Weather App",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              // Project 2
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                color: Colors.grey[900],

                child: Row(
                  children: const [
                    Icon(Icons.shopping_cart, color: Colors.orange),
                    SizedBox(width: 10),
                    Text("E-Commerce App",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              // Project 3
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(15),
                color: Colors.grey[900],

                child: Row(
                  children: const [
                    Icon(Icons.check_box, color: Colors.orange),
                    SizedBox(width: 10),
                    Text("To-Do App",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ===== CONTACT =====
              const Text(
                "Contact",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.email, color: Colors.red, size: 30),
                  Icon(Icons.phone, color: Colors.green, size: 30),
                  Icon(Icons.work, color: Colors.blue, size: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}