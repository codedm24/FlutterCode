import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade200,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            IconButton(
              icon: const Icon(Icons.access_alarm),
              color: Colors.white,
              onPressed: (){
                print('alarm icon pressed');
              },
            ),
            IconButton(
                onPressed: (){
                  print('bookmark icon pressed');
                },
                color: Colors.white,
                icon: const Icon(Icons.bookmark_border)
            ),
            IconButton(
              onPressed: (){
                print('flight icon pressed');
              },
              icon: const Icon(Icons.flight),
              color: Colors.white,
            ),
            const Divider(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: (){
          print('add icon pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
