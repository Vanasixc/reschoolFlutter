import 'package:flutter_1/app.dart';

class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Scroll"),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Produk Toko buah",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            for (int i = 1; i <= 20; i++)
              Card(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart, color: Colors.blueAccent),
                  title: Text("Buah ke $i"),
                  subtitle: Text("Harga : Rp${(i * 1000)}"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Anda memilih buah ke-$i")),
                      );
                    },
                    child: Text("Buy"),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
