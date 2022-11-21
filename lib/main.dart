import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Home(),
//   ));
// }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Navbar'),
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         backgroundColor: Color.fromRGBO(96, 125, 139, 1),
//         body: Center(
//           child: Column(children: [
//             Center(
//                 child: ElevatedButton(
//               onPressed: () {},
//               child: Text('Raise Button'),
//             )),
//             SnackBar(content: Text('Snack Bar')),
//           ]),
//         ));
//   }
// }



void main() => runApp(MaterialApp(
  home: SnackBarDemo(),
));

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}