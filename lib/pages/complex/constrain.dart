import 'package:flutter_1/app.dart';

class Constrain extends StatelessWidget {
  const Constrain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constrain"),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxHeight: 250,
            maxWidth: 250,
          ),
          child: Container(
            color: Colors.lightBlueAccent,
            width: 300,
            height: 150,
            child: Center(
              child: Text(
                'Constrain Box',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
