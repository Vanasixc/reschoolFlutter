import 'package:flutter_1/app.dart';

class ListViewStatis extends StatelessWidget {
  const ListViewStatis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View (Statis)"),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              title: Text("Apel"),
              subtitle: Text("Harga : Rp5.000"),
              trailing: Text("20 Pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda Memilih Apel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.orange),
              title: Text("Jeruk"),
              subtitle: Text("Harga : Rp6.000"),
              trailing: Text("15 Pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda Memilih Jeruk")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.yellow),
              title: Text("Pisang"),
              subtitle: Text("Harga : Rp4.000"),
              trailing: Text("40 Pcs"),
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda Memilih Pisang")));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.pink),
              title: Text("Strawberry"),
              subtitle: Text("Harga : Rp15.000"),
              trailing: Text("40 Pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda Memilih Strawberry")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.purple),
              title: Text("Blueberry"),
              subtitle: Text("Harga : Rp20.000"),
              trailing: Text("30 Pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda Memilih Blueberry")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
