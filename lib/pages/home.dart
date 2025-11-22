import 'package:flutter_1/app.dart';

//class untuk menampung title, icon, dan page mana yang ingin dituju
class Pages {
  final String title;
  final IconData icon;
  final Widget page;

  const Pages({required this.title, required this.icon, required this.page});
}

final List<Pages> pages = [
  // untuk menambahkan halaman baru, tinggal tambahkan Pages() lagi di bawah. urutan menyesuaikan inisialisasi
  Pages(
    title: "Layout Column",
    icon: Icons.view_column,
    page: const LayoutColumn()
  )
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ini appbar untuk bagian atas halaman
      appBar: AppBar(
        title: const Text("Laman Layouting"),
        backgroundColor: Colors.teal[300],
        foregroundColor: Colors.white,
      ),
      // ini body untuk bagian isi halaman
      // GridView.count itu untuk membuat grid dengan jumlah kolom tertentu, disini dia tergantung dari seberapa banyak item yang ada di class Pages
      body: GridView.count(
        // untuk mengatur maksimal jumlah kolom
        crossAxisCount: 2,
        // untuk mengatur jarak antar item
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        // children: list.generate itu untuk membuat children sebanyak jumlah item di class Pages. pages.length jumlah pages di class Pages, index itu hitungan 1,2,dst
        children: List.generate(pages.length, (index) {
          // inisialisasi item dari class Pages
          final item = pages[index];
          //inkwell itu untuk membuat item bisa di klik
          return InkWell(
            onTap: () {
              // pengecekkan jika index kurang dari panjang pages
              if (index < pages.length) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item.page),
                );
              }
            },
            // untuk membuat border pada item
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // untuk bentuk tepi tepi border
                borderRadius: BorderRadius.circular(8),
                // untuk mengatur warna dan lebar border
                border: Border.all(
                  color: Color(0xff3c5a14),
                  width: 7
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // disini mengatur isi item
                children: [
                  // spacer untuk memberi jarak (jadi ky spasi gtu)
                  const Spacer(),
                  Icon(
                    item.icon,
                    size: 35,
                    color: Color(0xff598b2c),
                  ),
                  const Spacer(),
                  // kenapa pading digunakan? supaya textnya tidak menempel ke border
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff669d31),
                        fontWeight: FontWeight.w700
                      ),
                    ), 
                    )
                ],
              )
            ),
          );
        }),
      ),
    );
  }
}
