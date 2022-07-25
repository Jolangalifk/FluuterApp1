import 'package:flutter/material.dart';

class PerhitunganBangunDatar extends StatefulWidget {
  const PerhitunganBangunDatar({Key? key}) : super(key: key);

  @override
  State<PerhitunganBangunDatar> createState() => _PerhitunganBangunDatarState();
}

class _PerhitunganBangunDatarState extends State<PerhitunganBangunDatar> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("From Registrasion"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(

          children: [
            TextField(
              controller: ctrPanjang,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Panjang',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: ctrLebar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Lebar',
              ),
            ),
            SizedBox(height: 10,),  
          Center(
            child: Container(
              width: 400,
              height: 50,
              child: ElevatedButton (
                onPressed: () {
                  setState(() {
                    LuasPersegiPanjang ();
                  });
                },
                child: Text("Submit"),
              ),)
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Result',
            style: TextStyle(fontSize: 18),
            ),
            Center(
              child: Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Hasilnya ${result.toString()}",
                    style: TextStyle(fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }

void LuasPersegiPanjang () {
  result = int.parse(ctrLebar.text) * int.parse(ctrPanjang.text);
}
}