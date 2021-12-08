import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NFT Generator"),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
  
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = AppBar().preferredSize.height;
    var newAspectRatio = size.width / (size.height - height);
    
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: newAspectRatio / 3,
      children: [
        Container(
          child: const Center(
            child: Text("Hello 1"),
          ),
          color: Colors.red[800],
        ),
        const Center(
          child: Text("Hello 2"),
        ),
        Container(
          child: const Center(
            child: Text("Hello 3"),
          ),
          color: Colors.blue[400],
        ),
      ],
    );
  }
}
