import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ProfilePage()));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text("Nama    : Moh. Naufal", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Email   : moh.naufal1987@gmail.com", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Alamat  : Genteng Kulon, Genteng", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("No telp : 089675803596", style: TextStyle(fontSize: 20)),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Keluar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
