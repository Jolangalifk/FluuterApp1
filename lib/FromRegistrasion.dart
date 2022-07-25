import 'package:flutter/material.dart';

class FromRegistrasion extends StatefulWidget {
  const FromRegistrasion({Key? key}) : super(key: key);

  @override
  State<FromRegistrasion> createState() => _FromRegistrasionState();
}

class _FromRegistrasionState extends State<FromRegistrasion> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();

  int id = 1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("From Registrasion"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(

          children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: ctrPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            Text("Jenis Kelamin" , style: TextStyle(fontSize: 15 ),),
            SizedBox(height: 10,),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id, 
                  onChanged: (val) {
                    setState(() {
                      id = 1;
                    });
                },
                ),
                Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id, 
                  onChanged: (val) {
                    setState(() {
                      id = 2;  
                  });

                },
                ),
                Text("Female")
              ],
            ),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text("Submit"),)
                ),
            ),
          ],
          
        ),
      ),
    );
  }
}