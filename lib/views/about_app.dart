import 'package:flutter/material.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          leadingWidth: 40,
          leading: Padding(
            padding: const EdgeInsets.only(top: 8.0), 
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff136a8a), Color(0xff57C785)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: const Text(
              "About App",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff136a8a),
              child: const Icon(
                Icons.security,
                size: 50,
                color: Color(0xff57C785),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Secure Digital Vault System",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "A modern and secure digital vault designed to manage your balance, "
              "track your transactions, and provide safe money handling features. "
              "This system ensures reliability, accuracy, and seamless user experience.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Divider(),
            _infoTile("Version", "1.0.0", Icons.info_outline),
            _infoTile(
              "Developers",
              "Muhammad Aftab • Javeria Hussain • Khalid Farooqi",
              Icons.group,
            ),
            _infoTile("Project", "PF Semester Project", Icons.school),
          ],
        ),
      ),
    );
  }

  static Widget _infoTile(String title, String value, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Color(0xff57C785)),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Text(
        value,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      ),
    );
  }
}
