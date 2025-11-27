import 'package:flutter_1/app.dart';

class ListViewDinamis extends StatelessWidget {
  const ListViewDinamis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View (Dinamis)"),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: buah.length,
        itemBuilder: (context, index) {
          final item = buah[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20)
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: item.warnaIcon),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: Text(item.trailing),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(item.yangMuncul)));
              },
            ),
          );
        },
      ),
    );
  }
}
