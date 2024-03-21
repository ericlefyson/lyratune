import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

class BottomNavigator extends StatefulWidget {
  final TabsRouter tabsRouter;
  const BottomNavigator({super.key, required this.tabsRouter});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with SingleTickerProviderStateMixin {
  // late AnimationController _animationController;
  // late Animation<double> _animation;
  // double _scale = 4.4;

  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 350),
    // );
    // _animation =
    //     Tween<double>(begin: 4, end: _scale).animate(_animationController);
    // _animationController.forward();

    // widget.tabsRouter.addListener(() {
    //   if (widget.tabsRouter.activeIndex == BottomNavigatorPage.home) {
    //     setState(() {
    //       _scale = 4.4;
    //     });
    //   } else if (widget.tabsRouter.activeIndex ==
    //       BottomNavigatorPage.keyFinder) {
    //     setState(() {
    //       _scale = 6;
    //     });
    //   }
    //   _animation = Tween<double>(begin: _animation.value, end: _scale)
    //       .animate(_animationController);
    //   _animationController.reset();
    //   _animationController.forward();
    // });
  }

  @override
  void dispose() {
    // _animationController.dispose();
    // widget.tabsRouter.removeListener(() {});
    super.dispose();
  }

  void _onTabTapped(int index) {
    widget.tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   bottom: 20,
        //   right: 0,
        //   left: 0,
        //   top: 0,
        //   child: Transform.scale(
        //       scale: 4.4,
        //       child: Image.asset(
        //         width: 0,
        //         height: 0,
        //         AppImages.moon,
        //         fit: BoxFit.scaleDown,
        //       )),
        // ),
        Padding(
          padding: const EdgeInsets.only(
              bottom: AppSpacing.defaultSpacing * 3,
              right: AppSpacing.defaultSpacing * 2.6,
              left: AppSpacing.defaultSpacing * 2.6),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 3,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(54)),
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
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.music_note_outlined),
                    label: 'KeyFinder',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined),
                    label: 'Cifralizador',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: 'Livraria de Acordes',
                  ),
                ],
                currentIndex: widget.tabsRouter.activeIndex,
                onTap: _onTabTapped),
          ),
        ),
      ],
    );
  }
}
