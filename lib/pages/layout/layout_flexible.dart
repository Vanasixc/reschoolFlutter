import 'package:flutter_1/app.dart';

class LayoutFlexible extends StatelessWidget {
  const LayoutFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Flexible"),
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
                "Ini adalah layout flexible",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // sizedbox biar ada tinggi (terlihat) si box containernya
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Flexible(flex: 1, child: Container(color: Colors.red.shade700)),
                  Flexible(flex: 2, child: Container(color: Colors.brown.shade400)),
                  Flexible(flex: 3, child: Container(color: Colors.amber.shade400)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
