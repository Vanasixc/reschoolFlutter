import 'package:flutter_1/app.dart';

class GridViewStatis extends StatelessWidget {
  const GridViewStatis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View (Statis)"),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kamu memilih Apel")));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.red, size: 40),
                  SizedBox(height: 8),
                  Text("Apel", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Harga : Rp5.000"),
                  Text("20 Pcs", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kamu memilih Jeruk")));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.orange, size: 40),
                  SizedBox(height: 8),
                  Text("Jeruk", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Harga : Rp6.000"),
                  Text("15 Pcs", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kamu memilih Pisang")));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.yellow, size: 40),
                  SizedBox(height: 8),
                  Text("Pisang", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Harga : Rp4.000"),
                  Text("40 Pcs", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kamu memilih Strawberry")));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.pink, size: 40),
                  SizedBox(height: 8),
                  Text("Strawberry", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Harga : Rp15.000"),
                  Text("40 Pcs", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kamu memilih Blueberry")));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket, color: Colors.purple, size: 40),
                  SizedBox(height: 8),
                  Text("Bluerberry", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Harga : Rp20.000"),
                  Text("30 Pcs", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
