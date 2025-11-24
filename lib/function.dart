// ------------------------------------------ Class ------------------------------------------
//class untuk menampung title, icon, dan page mana yang ingin dituju
import 'app.dart';
class Pages {
  final String title;
  final IconData icon;
  final Widget page;

  const Pages({required this.title, required this.icon, required this.page});
}



// ------------------------------------------ Pages ------------------------------------------
// home
final List<Pages> homePages = [
  Pages(
    title: "Layouting",
    icon: Icons.view_list,
    page: Layouting()
    ),

  Pages(
    title: "Kumpulan Tugas",
    icon: Icons.task,
    page: Tasking()
  )
];

// layout
final List<Pages> pages = [
  // untuk menambahkan halaman baru, tinggal tambahkan Pages() lagi di bawah. urutan menyesuaikan inisialisasi
  Pages(
    title: "Layout Column",
    icon: Icons.view_column,
    page: const LayoutColumn()
  ),

  Pages(
    title: "Layout Column Lanjutan",
    icon: Icons.view_column,
    page: const LayoutColumnLanjutan()
  ),

  Pages(
    title: "Layout Row",
    icon: Icons.view_agenda,
    page: const LayoutRow(),
  ),

  Pages(
    title: "Layout Row Lanjutan",
    icon: Icons.view_agenda,
    page: const LayoutRowLanjutan(),
  ),

  Pages(
    title: "Layout Container",
    icon: Icons.crop_square,
    page: const LayoutContainer()
  ),

  Pages(
    title: "Layout Stack",
    icon: Icons.stacked_bar_chart,
    page: const LayoutStack()
  ),

  Pages(
    title: "Layout Flexible",
    icon: Icons.view_comfy,
    page: const LayoutFlexible()
  ),

  Pages(
    title: "Layout Expansible",
    icon: Icons.expand,
    page: const LayoutExpansible()
  ),  
];

// tasking
final List<Pages> task = [
  Pages(
    title: "Tugas 1 : Increment/Decrement dan floating action button",
    icon: Icons.refresh,
    page: const Tugas1()
  ),

  Pages(
    title: "Tugas 2 : Instagram Profile Page Clone",
    icon: Icons.person,
    page: const Tugas2()
  )
];