import 'package:flutter_1/app.dart';

class LayoutRowLanjutan extends StatelessWidget {
  const LayoutRowLanjutan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Lanjutan"),
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
                "Layout Row lanjutan dengan 3 row dalam 1 column",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(width: 8),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
