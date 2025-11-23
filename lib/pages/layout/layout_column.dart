import 'package:flutter_1/app.dart';

class LayoutColumn extends StatelessWidget {
  const LayoutColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Column"),
        backgroundColor: Colors.blue[100],
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "Layout column itu dia memanjang dari atas ke bawah (vertikal)",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
