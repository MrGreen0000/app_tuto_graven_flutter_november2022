import 'package:first_app_mobile_november2022/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asynconf 2022'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/logos/logo.svg', color: Colors.blue),
            const Text(
              'Asynconf 2022',
              style: TextStyle(
                fontSize: 42.0,
                fontFamily: 'Poppins',
              ),
            ),
            const Text(
              'Salon virtuel de l\'informatique. Du 27 au 29 octobre 2022',
              style: TextStyle(
                fontSize: 24.0,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            ElevatedButton.icon(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(20.0),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const EventPage(),
                    ),
                  );
                },
                label: const Text(
                  'Afficher le planning',
                  style: TextStyle(fontSize: 20.0),
                ),
                icon: const Icon(Icons.calendar_month))
          ],
        ),
      ),
    );
  }
}
