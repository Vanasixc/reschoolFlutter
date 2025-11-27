import 'package:flutter_1/app.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int _counter = 0;
  String _angka = "Nol";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _cek();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _cek();
    });
  }

  void _reloadCounter() {
    setState(() {
      _counter = 0;
      _cek();
    });
  }

  void _cek() {
    setState(() {
      if (_counter == 0) {
        _angka = "Nol";
      } else if (_counter % 2 == 0) {
        _angka = "Genap";
      } else {
        _angka = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas tambah/kurang dengan bottom navigation"),
        backgroundColor: Colors.deepPurple[300],
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter", style: TextStyle(fontSize: 20)),
            Text("$_counter", style: TextStyle(fontSize: 26)),
            Text(_angka, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _reloadCounter,
            backgroundColor: Colors.red[100],
            foregroundColor: Colors.black,
            child: Icon(Icons.replay),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            backgroundColor: Colors.red[100],
            foregroundColor: Colors.black,
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: Colors.red[100],
            foregroundColor: Colors.black,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
