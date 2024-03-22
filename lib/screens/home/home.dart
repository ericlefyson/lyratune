import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/components/redirect_key_finder_button.dart';
import 'package:lyratune/constants.dart';
import 'package:lyratune/screens/home/audio_list.dart';
import 'package:lyratune/stores/tuner_store.dart';
import 'package:lyratune/utils/styles.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TunerStore tunerStore;

  @override
  void didChangeDependencies() {
    tunerStore = Provider.of<TunerStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.moon),
            fit: BoxFit.contain,
            alignment: Alignment(0, 1.7),
          ),
        ),
        child: Column(
          children: [
            const AudioList(),
            const SizedBox(
              height: AppSpacing.defaultSpacing * 3,
            ),
            RedirectKeyFinderButton(onTap: () {
              print("Redirecting to key finder");

              tunerStore
                  .setBottomNavigatorCurrentPage(BottomNavigatorPage.keyFinder);
            }),
          ],
        ),
      ),
    );
  }
}
