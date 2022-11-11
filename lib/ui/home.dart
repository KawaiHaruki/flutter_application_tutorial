import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButtom() {
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scaffold"),
          centerTitle: true,
          backgroundColor: Colors.black12,
          actions: [
            IconButton(
                onPressed: () => debugPrint("Clicked!"),
                icon: const Icon(Icons.email)),
            IconButton(
                onPressed: _tapButtom, icon: const Icon(Icons.access_alarms))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            child: Icon(Icons.call_missed),
            onPressed: () {
              final snackBar = const SnackBar(
                content: Text("hellohello"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle), label: ("First")),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ("Second")),
        ]),
        body: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomButton(), CustomButton()
            // InkWell(
            //   child: Text(
            //     "Tap me!",
            //     style: TextStyle(fontSize: 50),
            //   ),
            //   onTap: (() => debugPrint("OK")),
            // )
          ]),
        ));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = const SnackBar(
          content: Text("hellohello"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.indigo, borderRadius: BorderRadius.circular(8.0)),
        child: const Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
        color: Color.fromARGB(255, 37, 198, 200),
        child: Center(
            child: Text(
          "Hello Flutter!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 200,
              fontStyle: FontStyle.italic),
        )));
  }
}
