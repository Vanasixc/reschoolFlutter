import 'package:flutter_1/app.dart';

class CustomeScroll extends StatelessWidget {
  CustomeScroll({super.key});

  final List<String> items = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // untuk appbar dari body dengan fungsi CustomScrollView
      body: CustomScrollView(
        slivers: [
          // untuk appbar dengan gambar costume
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Toko buah",
                style: TextStyle(color: Colors.amberAccent[200]),
              ),
              background: Image.network(
                "https://picsum.photos/id/75/600/300",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // untuk bagian tengah dengan listview
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text(items[index]),
                subtitle: Text("Harga Rp${(index + 1) * 1000}"),
              );
            }, childCount: 6),
          ),
          // untuk bagian bawah dengan gridview
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(child: Center(child: Text("Produk ${index + 1}")));
            }, childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
