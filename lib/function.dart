// ------------------------------------------ Class ------------------------------------------
//class untuk menampung title, icon, dan page mana yang ingin dituju

import 'app.dart';

class Pages {
  final String title;
  final IconData icon;
  final Widget page;

  const Pages({required this.title, required this.icon, required this.page});
}

// Complex : List View Statis
class Buah {
  final String title;
  final Color warnaIcon;
  final String subtitle;
  final String trailing;
  final String yangMuncul;

  const Buah({
    required this.title,
    required this.warnaIcon,
    required this.subtitle,
    required this.trailing,
    required this.yangMuncul,
  });
}

// ------------------------------------------ Pages ------------------------------------------
// home pages
final List<Pages> homePages = [
  Pages(title: "Layouting", icon: Icons.view_list, page: Layouting()),

  Pages(title: "Kumpulan Tugas", icon: Icons.task, page: Tasking()),

  Pages(title: "Tugas Profile", icon: Icons.person, page: ProfilePages()),

  Pages(
    title: "Complex",
    icon: Icons.view_compact_alt_outlined,
    page: ComplexPages(),
  ),
];

// layout pages
final List<Pages> pages = [
  // untuk menambahkan halaman baru, tinggal tambahkan Pages() lagi di bawah. urutan menyesuaikan inisialisasi
  Pages(
    title: "Layout Column",
    icon: Icons.view_column,
    page: const LayoutColumn(),
  ),

  Pages(
    title: "Layout Column Lanjutan",
    icon: Icons.view_column,
    page: const LayoutColumnLanjutan(),
  ),

  Pages(title: "Layout Row", icon: Icons.view_agenda, page: const LayoutRow()),

  Pages(
    title: "Layout Row Lanjutan",
    icon: Icons.view_agenda,
    page: const LayoutRowLanjutan(),
  ),

  Pages(
    title: "Layout Container",
    icon: Icons.crop_square,
    page: const LayoutContainer(),
  ),

  Pages(
    title: "Layout Stack",
    icon: Icons.stacked_bar_chart,
    page: const LayoutStack(),
  ),

  Pages(
    title: "Layout Flexible",
    icon: Icons.view_comfy,
    page: const LayoutFlexible(),
  ),

  Pages(
    title: "Layout Expansible",
    icon: Icons.expand,
    page: const LayoutExpansible(),
  ),

  Pages(
    title: "Layout Scaffold",
    icon: Icons.view_sidebar,
    page: const LayoutScaffold(),
  ),
];

// task page
final List<Pages> task = [
  Pages(
    title: "Tugas 1 : Increment/Decrement dan floating action button",
    icon: Icons.refresh,
    page: const Tugas1(),
  ),

  Pages(
    title: "Tugas 2 : Instagram Profile Page Clone",
    icon: Icons.person,
    page: const Tugas2(),
  ),
];

final List<Pages> profile = [
  Pages(title: "Profile", icon: Icons.person, page: ProfilePage()),

  Pages(title: "Home", icon: Icons.home, page: HomePage()),

  Pages(title: "About", icon: Icons.account_box_outlined, page: AboutPage()),
];

final List<Pages> complex = [
  Pages(title: "List View Statis", icon: Icons.list, page: ListViewStatis()),
  Pages(
    title: "List View Dinamis",
    icon: Icons.list_alt,
    page: ListViewDinamis(),
  ),

  Pages(
    title: "Grid View Statis",
    icon: Icons.grid_view,
    page: GridViewStatis(),
  ),

  Pages(
    title: "Grid View Dinamis",
    icon: Icons.grid_on_sharp,
    page: GridViewDinamis(),
  ),

  Pages(
    title: "Single Scroll",
    icon: Icons.grid_on_sharp,
    page: SingleScroll(),
  ),

  Pages(title: "Costume Scroll", icon: Icons.apple, page: CustomeScroll()),

  Pages(
    title: "Theme Material",
    icon: Icons.thunderstorm_rounded,
    page: ThemeMaterial(),
  ),

  Pages(
    title: "Theme Local",
    icon: Icons.laptop_mac_outlined,
    page: ThemeLocal(),
  ),
];

// ------------------------------------------ Variable ------------------------------------------
final List<Buah> buah = [
  Buah(
    title: "Apel",
    warnaIcon: Colors.red,
    subtitle: "Harga : Rp5.000",
    trailing: "20 Pcs",
    yangMuncul: "Anda Memilih Apel",
  ),

  Buah(
    title: "Jeruk",
    warnaIcon: Colors.orange,
    subtitle: "Harga : Rp6.000",
    trailing: "15 Pcs",
    yangMuncul: "Anda Memilih Jeruk",
  ),

  Buah(
    title: "Pisang",
    warnaIcon: Colors.yellow,
    subtitle: "Harga : Rp4.000",
    trailing: "40 Pcs",
    yangMuncul: "Anda Memilih Pisang",
  ),

  Buah(
    title: "Strawberry",
    warnaIcon: Colors.pink,
    subtitle: "Harga : Rp15.000",
    trailing: "40 Pcs",
    yangMuncul: "Anda Memilih Strawberry",
  ),

  Buah(
    title: "Blueberry",
    warnaIcon: Colors.purple,
    subtitle: "Harga : Rp20.000",
    trailing: "30 Pcs",
    yangMuncul: "Anda Memilih Blueberry",
  ),
];
