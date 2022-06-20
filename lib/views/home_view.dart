import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: LinearProgressIndicator(
                color: Colors.indigo.shade700,
                backgroundColor: Colors.transparent,
              ),
            ),
            const Text(
              'C o m i n g   S o o n . . .',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Rencang Gunung Outdoor | 2022',
          style: TextStyle(color: Colors.grey.withOpacity(0.8)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
