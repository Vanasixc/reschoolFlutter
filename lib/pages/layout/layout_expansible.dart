import 'package:flutter_1/app.dart';

class LayoutExpansible extends StatelessWidget {
  const LayoutExpansible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Expansible"),
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
                "Ini adalah layout Expansible",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff669d31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 80,
                color: Colors.red.shade700,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.brown.shade400,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 120,
                color: Colors.amber.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
