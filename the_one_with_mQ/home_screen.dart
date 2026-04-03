import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Get screen size using MediaQuery for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // 2. Adjust general padding based on screen width
    double horizontalPadding = screenWidth > 600 ? screenWidth * 0.15 : screenWidth * 0.05;

    // Common variables for sizing
    double titleFontSize = screenWidth > 600 ? 26 : 22;
    
    // Header variables
    double containerPadding = screenWidth > 600 ? 40 : 20;
    double avatarRadius = screenWidth > 600 ? 70 : 50;
    double nameFontSize = screenWidth > 600 ? 30 : 24;
    double bioFontSize = screenWidth > 600 ? 18 : 14;

    // Skills variables
    double skillFontSize = screenWidth > 600 ? 16 : 14;
    double skillPaddingHorizontal = screenWidth > 600 ? 20 : 15;
    double skillPaddingVertical = screenWidth > 600 ? 12 : 10;

    // Project variables
    double cardPadding = 20;
    double projectIconSize = screenWidth > 600 ? 45 : 35;
    double iconBgPadding = 12;
    double spacingBetweenIconAndText = 15;
    double projectTitleFontSize = screenWidth > 600 ? 20 : 18;
    double projectDescFontSize = screenWidth > 600 ? 16 : 14;
    
    // Calculate safe text width to avoid overflows without using Expanded widget
    double safeTextWidth = screenWidth -
        (horizontalPadding * 2) - // Subtract outer screen padding
        (cardPadding * 2) - // Subtract inner card padding
        (projectIconSize + iconBgPadding * 2) - // Subtract total width of the icon setup
        spacingBetweenIconAndText - // Subtract margin between shape and text
        5; // Safety margin subtraction

    // Contact variables
    double contactIconSize = screenWidth > 600 ? 35 : 25;
    double contactButtonSize = screenWidth > 600 ? 70 : 55;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1E1E1E), // Dark app bar
        elevation: 0,
        centerTitle: true,
      ),
      // 3. Main layout using SingleChildScrollView and Column
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: screenHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // ================= HEADER SECTION =================
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(containerPadding),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E), // Dark container surface
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Circular profile image
                    CircleAvatar(
                      radius: avatarRadius,
                      backgroundColor: const Color(0xFF3949AB), // Indigo shade
                      backgroundImage: const NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRgESZ_f0Qzj0CR8DgKzpvLZr16LNChBtJKQjnK18MQ2v9Rddvkn85t5C5LIgQeY88McieRg&s=10",
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // Name text
                    Text(
                      'Rosahn SIngh',
                      style: TextStyle(
                        fontSize: nameFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    // Short bio text
                    Text(
                      'Flutter Developer & UI Enthusiast\nI build beautiful, responsive apps.',
                      textAlign: TextAlign.center, // Center aligned for better looks
                      style: TextStyle(
                        fontSize: bioFontSize,
                        color: Colors.grey, // Adjusted to grey instead of grey[400] for const correctness
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              // ================= SKILLS SECTION =================
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Skill 1
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: skillPaddingHorizontal,
                          vertical: skillPaddingVertical),
                      margin: const EdgeInsets.only(right: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3949AB), // Indigo shade
                        borderRadius: BorderRadius.circular(15), 
                      ),
                      child: Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: skillFontSize,
                        ),
                      ),
                    ),
                    // Skill 2
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: skillPaddingHorizontal,
                          vertical: skillPaddingVertical),
                      margin: const EdgeInsets.only(right: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3949AB),
                        borderRadius: BorderRadius.circular(15), 
                      ),
                      child: Text(
                        'Dart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: skillFontSize,
                        ),
                      ),
                    ),
                    // Skill 3
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: skillPaddingHorizontal,
                          vertical: skillPaddingVertical),
                      margin: const EdgeInsets.only(right: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3949AB),
                        borderRadius: BorderRadius.circular(15), 
                      ),
                      child: Text(
                        'UI/UX Design',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: skillFontSize,
                        ),
                      ),
                    ),
                    // Skill 4
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: skillPaddingHorizontal,
                          vertical: skillPaddingVertical),
                      margin: const EdgeInsets.only(right: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3949AB),
                        borderRadius: BorderRadius.circular(15), 
                      ),
                      child: Text(
                        'Firebase',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: skillFontSize,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              // ================= PROJECTS SECTION =================
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: [
                  // Project 1
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(cardPadding),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(iconBgPadding),
                          decoration: BoxDecoration(
                            color: Colors.orange.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.cloud,
                            size: projectIconSize,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(width: spacingBetweenIconAndText),
                        SizedBox(
                          width: safeTextWidth, 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Weather App',
                                style: TextStyle(
                                  fontSize: projectTitleFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'A beautiful weather application fetching live data.',
                                style: TextStyle(
                                  fontSize: projectDescFontSize,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  // Project 2
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(cardPadding),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(iconBgPadding),
                          decoration: BoxDecoration(
                            color: Colors.teal.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            size: projectIconSize,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(width: spacingBetweenIconAndText),
                        SizedBox(
                          width: safeTextWidth, 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'E-Commerce UI',
                                style: TextStyle(
                                  fontSize: projectTitleFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'A clean and modern UI for an online shopping app.',
                                style: TextStyle(
                                  fontSize: projectDescFontSize,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Project 3
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(cardPadding),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(iconBgPadding),
                          decoration: BoxDecoration(
                            color: Colors.pink.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.check_box,
                            size: projectIconSize,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(width: spacingBetweenIconAndText),
                        SizedBox(
                          width: safeTextWidth, 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Manager',
                                style: TextStyle(
                                  fontSize: projectTitleFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'A simple to-do list application for daily tasks.',
                                style: TextStyle(
                                  fontSize: projectDescFontSize,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),

              // ================= CONTACT SECTION =================
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Contact Me',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Email Contact
                    Container(
                      width: contactButtonSize,
                      height: contactButtonSize,
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.email,
                        size: contactIconSize,
                        color: Colors.red,
                      ),
                    ),
                    // Phone Contact
                    Container(
                      width: contactButtonSize,
                      height: contactButtonSize,
                      decoration: BoxDecoration(
                        color: Colors.green.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.phone,
                        size: contactIconSize,
                        color: Colors.green,
                      ),
                    ),
                    // LinkedIn Contact
                    Container(
                      width: contactButtonSize,
                      height: contactButtonSize,
                      decoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.work,
                        size: contactIconSize,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              
            ],
          ),
        ),
      ),
    );
  }
}
