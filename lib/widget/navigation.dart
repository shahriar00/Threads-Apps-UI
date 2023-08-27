import 'package:flutter/material.dart';
import 'package:threadsappui/view/homepage.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int index = 0;
  List page = [
    homepage(),
    homepage(),
    homepage(),
    homepage(),
    homepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Icon(Icons.home,
                    size: 30, color: index == 0 ? Colors.black : Colors.grey),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Icon(Icons.search,
                    size: 30, color: index == 1 ? Colors.black : Colors.grey),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Icon(Icons.edit_square,
                    size: 30, color: index == 2 ? Colors.black : Colors.grey),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Icon(Icons.favorite_outline,
                    size: 30, color: index == 3 ? Colors.black : Colors.grey),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Icon(Icons.person_2_outlined,
                    size: 30, color: index == 4 ? Colors.black : Colors.grey),
              )
            ],
          ),
        ),
      ),


      //Body page......
      body: page[index],
    );
  }
}
