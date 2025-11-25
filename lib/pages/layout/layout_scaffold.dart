import 'package:flutter_1/app.dart';

class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Scaffold",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini Appbar"),
          backgroundColor: Colors.blue[100],
          foregroundColor: Colors.black,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () => {})],
        ),
        body: Center(
          child: Text(
            "Ini Body atau konten utama",
            style: TextStyle(fontSize: 20),
          ),
        ),
        // bottom navigation
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Apa yang akan tombol ini lakukan
          },
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
