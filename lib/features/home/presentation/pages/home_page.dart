import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/105419583?v=4'),
            ),
          )
      ),
      body: Center(
        child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                children: List.generate(6, (index) {
        return Container(
          color: Colors.blue,
          child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white),
              ),
          ),
        );
                }),
              ),
      ),
    );
  }
}