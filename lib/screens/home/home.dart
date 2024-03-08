import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:key_finder/utils/styles.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              spreadRadius: 0,
              blurRadius: 15,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          unselectedItemColor: AppColors.textBody,
          selectedItemColor: AppColors.primary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'KeyFinder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined),
              label: 'Cifralizador',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Configurações',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {},
        ),
      ),
      body: const Center(
        child: IndexedStack(
          index: 0,
          children: [],
        )
      ),
    );
  }
}
