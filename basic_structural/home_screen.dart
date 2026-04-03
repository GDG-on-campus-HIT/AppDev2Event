import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[400],
        
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrEUviVTxHromdwZEhO_uCljn-ZIawAHQbwA&s"),
                  ),
                   SizedBox(height: 10,),
                  Text("Roshan Singh", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),),
                   SizedBox(height: 5,),
                  Text("Random Text")
                ],
              ),
            ),
            Text("My Skills", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 80,
                      width: 140,
                      color: Colors.blue,
                      child: Text("Flutter"),
                    ),
                    SizedBox(width: 10,),
                     Container(
                      height: 80,
                      width: 140,
                      color: Colors.blue,
                      child: Text("Flutter"),
                    ),
                    SizedBox(width: 10,),
                     Container(
                      height: 80,
                      width: 140,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Flutter"),
                      ),
                    ),
                    SizedBox(width: 10,),
                     Container(
                      height: 80,
                      width: 140,
                      color: Colors.blue,
                      child: Text("Flutter"),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Text("Projects", style: TextStyle(fontSize: 32, color: Colors.pink),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.red,
                      child: Icon(Icons.cloud, size: 80,color: Colors.yellow,)),
                      Column(
                        children: [
                          Text("Weather App"),
                          Text("Kuch to text likha hua hai \n which i dont know")
                        ],
                      )
                  ],
                  
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.red,
                      child: Icon(Icons.cloud, size: 80,color: Colors.yellow,)),
                      Column(
                        children: [
                          Text("E-Commerce UI"),
                          Text("Kuch to text likha hua hai \n which i dont know")
                        ],
                      )
                  ],
                  
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      color: Colors.red,
                      child: Icon(Icons.cloud, size: 80,color: Colors.yellow,)),
                      Column(
                        children: [
                          Text("Task Manager"),
                          Text("Kuch to text likha hua hai \n which i dont know")
                        ],
                      )
                  ],
                  
                ),
              ),
            ),
            Text("Contact Me", style: TextStyle(fontSize: 32, color: Colors.blueAccent),),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 120,
                    
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(360)
                    ),
                    child: Icon(Icons.call, color: Colors.blue,),
                  ),
                    SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 120,
                    
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(360)
                    ),
                    child: Icon(Icons.message, color: Colors.blue,),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 120,
                    
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(360)
                    ),
                    child: Icon(Icons.work, color: Colors.blue,),
                  )
                ],
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}