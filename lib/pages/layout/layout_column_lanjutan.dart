import 'package:flutter_1/app.dart';

class LayoutColumnLanjutan extends StatelessWidget {
  const LayoutColumnLanjutan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Lanjutan"),
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
                "Layout column lanjutan 3 column dalam 1 row",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(height: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(height: 8),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(height: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(height: 8),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    SizedBox(height: 8),
                    Container(width: 100, height: 100, color: Colors.green),
                    SizedBox(height: 8),
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
