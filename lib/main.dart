import 'package:flutter_1/app.dart';

// method running
void main() {
  runApp(const MyApp());
}

// class myapp 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner untuk menghilangkan tanda debug, home: itu untuk menunjukkan ke halaman mana dia merender
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
