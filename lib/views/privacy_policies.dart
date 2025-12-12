import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: const Text(
              "Privacy Policy",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Icon(
                      Icons.privacy_tip,
                      size: 60,
                      color: Color(0xff57C785),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Your Privacy Matters",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "We collect minimal information required to make the app work securely. "
                      "No unnecessary data is stored, and all records are protected.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _policyPoint(
              "Information Collection",
              "Only necessary login and account data is collected.",
            ),
            _policyPoint(
              "Data Security",
              "We apply strong security measures to protect your data.",
            ),
            _policyPoint(
              "User Rights",
              "You can request account deletion or data correction anytime.",
            ),
            _policyPoint(
              "Contact",
              "Reach us via the Contact Us page for privacy concerns.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _policyPoint(String title, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.green),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(text),
      ),
    );
  }
}
