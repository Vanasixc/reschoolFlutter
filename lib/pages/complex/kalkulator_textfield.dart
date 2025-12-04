import 'package:flutter_1/app.dart';

class KalkulatorTextfield extends StatefulWidget {
  const KalkulatorTextfield({super.key});

  @override
  State<StatefulWidget> createState() => _KalkulatorTextfield();
}

class _KalkulatorTextfield extends State<KalkulatorTextfield> {
  double angka1 = 0;
  double angka2 = 0;
  double hasil = 0;

  void _tambah() {
    setState(() {
      hasil = angka1 + angka2;
    });
  }

  void _kurang() {
    setState(() {
      hasil = angka1 - angka2;
    });
  }

  void _kali() {
    setState(() {
      hasil = angka1 * angka2;
    });
  }

  void _bagi() {
    setState(() {
      hasil = angka1 / angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Text Field'),
        backgroundColor: Colors.pinkAccent[400],
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan angka pertama',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angka1 = double.tryParse(value) ?? 0;
              }, // memperbaharui angka1 saat input berubah
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan angka kedua',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                angka2 = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _tambah, child: Text('+')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _kurang, child: Text('-')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _kali, child: Text('x')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _bagi, child: Text(':')),
              ],
            ),

            SizedBox(height: 20),
            Text(
              'Hasil = $hasil',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
