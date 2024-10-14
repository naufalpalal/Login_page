import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                  labelText: 'Email Anda', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password Anda', border: OutlineInputBorder()),
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
                      Navigator.pushReplacementNamed(context, '/profile');
                    });

                    return AlertDialog(
                      title: Text('Berhasil Login'),
                      content: Text('Selamat Datang "Naufal".'),
                    );
                  },
                );
              },
              child: Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Belum punya akun ? Daftar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}