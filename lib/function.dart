// ------------------------------------------ Class ------------------------------------------
// home
//class untuk menampung title, icon, dan page mana yang ingin dituju
import 'app.dart';
class Pages {
  final String title;
  final IconData icon;
  final Widget page;

  const Pages({required this.title, required this.icon, required this.page});
}

// ------------------------------------------ Variable ------------------------------------------
// home
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