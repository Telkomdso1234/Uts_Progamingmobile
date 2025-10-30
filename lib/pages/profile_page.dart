import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Saya")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              "M. Ma'ruf Syarifudin",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text("NIM: M.Ma'ruf Syarifudin"),
            const Text("Email: 23670146"),
            const SizedBox(height: 20),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Prodi: Informatiska"),
                SizedBox(width: 20),
                Text("Semester: 5"),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali ke Dashboard"),
            )
          ],
        ),
      ),
    );
  }
}
