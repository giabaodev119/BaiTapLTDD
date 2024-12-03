import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class ScaffoldExample extends StatelessWidget{
  const ScaffoldExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold Example"),
      ),
      body: Center(
        child: Text("Hello mấy cưng", style: TextStyle(
          fontSize: 24,
          color: Colors.red,
        )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("dm a tai");
      },
      child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}
class RowExample extends StatelessWidget{
  const RowExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold Example"),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email),
              Text("doantogiabao@gmail.com"),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("dm a tai");
      },
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}

class ColumnExample extends StatelessWidget{
  const ColumnExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email),
            Icon(Icons.place_sharp),
            Icon(Icons.minor_crash),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("dm a tai");
      },
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}

class StackExample extends StatelessWidget{
  const StackExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold Example"),
      ),
      body: Center(
        child: Stack(
          children:<Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("dm a tai");
      },
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}

class ContainerExample extends StatelessWidget{
  const ContainerExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold Example"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.blue,
          child: Text('Helle mấy cưng!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("dm a tai");
      },
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}


class SizedBoxExample extends StatelessWidget{
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.email),
            SizedBox(width: 25,),
            Text('lenhattung@gmail.com')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ImageExample extends StatelessWidget{
  const ImageExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Example'),
      ),
      body: Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../assets/images/01.png',
                width: 750,
                height: 350,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20), // Khoảng cách giữa các hìn
              Image.network('https://picsum.photos/200/200')
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}