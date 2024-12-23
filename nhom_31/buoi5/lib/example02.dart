import 'package:flutter/material.dart';

class TextButtonExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextButton Example"),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
            print("TextButton Press");
          },
              child: Text("Click Me"),
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ElevatedButton Example"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("ElevatedButton Press");
            },
            child: Text("Click Me"),
          ),
        ),
      ),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OutlinedButton Example"),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              print("OutlinedButton Press");
            },
            child: Text("Click Me"),
          ),
        ),
      ),
    );
  }
}
class GestureDetectorExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OGestureDetector Example"),
        ),
        body: Center(
          child: GestureDetector(
            onTap:(){
              print("container tapped");
            },
            onDoubleTap: (){
              print("container double-tapped");
            },
            onLongPress: () {
              print("container long- pressed");
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink,
              child: Center(child: Text("Tap me"),),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField Example"),
        ),
        body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Enter you name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText:"Enter your email",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            )
          ],
        ),
        )
,      ),
    );
  }
}

// class LoginScreen extends StatefulWidget{
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen>{
//
// //GlobalKey để xác định form và quản lý trạng thái của nó
//   final _formKey = GlobalKey<FormState>();
//
// //Cac Controller de quan ly cac Input Field
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
// //   void _login() {
// // //Kiểm tra rang buoc cac Input Field co trong Form
// //     if (_formkey.currentState !.validate()) {
// //     }
//   }
//
// class TextFormFieldExample extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: "Enter your name",
//               border: OutlineInputBorder(),
//             ),
//             validator: (value){
//               if(value == null || value.isEmpty){
//                 return "Please enter your name";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 16),
//           ElevatedButton(onPressed: (){
//             if(_formKey.curr)
//           }, child: child)
//
//         ],
//       ),
//     );
//   }
// }







