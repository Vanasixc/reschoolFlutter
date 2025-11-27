import 'package:flutter_1/app.dart';

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Container"),
        backgroundColor: Colors.blue[100],
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          margin: const EdgeInsets.symmetric(horizontal: 50.0),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff3c5a14), width: 7),
            borderRadius: BorderRadius.circular(8),
            color: Colors.lightBlueAccent[200],
          ),
          child: const Text(
            "Ini adalah layout container, jadi isi kotak (atau bentuk apapun) akan memiliki isi",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
