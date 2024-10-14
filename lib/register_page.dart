import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    Future.delayed(Duration(milliseconds: 200), () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    });

                    return AlertDialog(
                      title: Text("Pendaftaran Berhasil"),
                      content: Text("Pendaftaran berhasil dilakukan."),
                    );
                  },
                );
              },
              child: Text('Daftar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sudah punya akun? Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}