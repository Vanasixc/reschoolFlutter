import 'package:flutter_1/app.dart';

class LayoutStack extends StatelessWidget {
  const LayoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Stack"),
        backgroundColor: Colors.blue[100],
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                "Layout Stack yang menumpuk dari bawah ke atas. tumpukan paling bawah adalah kuning, tengah merah, atas coklat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Stack(
              children: [
                Container(width: 200, height: 200, color: Colors.amber.shade400),
                Container(width: 150, height: 150, color: Colors.red.shade700),
                Container(width: 100, height: 100, color: Colors.brown.shade400),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
