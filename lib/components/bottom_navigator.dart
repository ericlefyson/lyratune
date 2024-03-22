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
              color: Color.fromRGBO(90, 68, 104, 0.5),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(90, 68, 104, 0.6),
                  spreadRadius: 0,
                  blurRadius: 30,
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
                selectedFontSize: 0, // Remove padding for selected item
                unselectedFontSize: 0, // Remove padding for unselected items
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                      ), // Adjust padding as needed
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: widget.tabsRouter.activeIndex == 0
                                ? const Color.fromRGBO(221, 176, 254, 1)
                                : Colors
                                    .white, // Border color for unselected state
                            width: 6, // Adjust border width as needed
                          ),
                          color: widget.tabsRouter.activeIndex == 0
                              ? const Color.fromRGBO(221, 176, 254, 1)
                              : Colors.white // Background color
                          ),
                      child: Icon(
                        Icons.home,
                        color: widget.tabsRouter.activeIndex == 0
                            ? Colors.white
                            : const Color.fromRGBO(
                                221, 176, 254, 1), // Icon color
                        size: 26, // Icon size
                      ),
                    ),
                    label: '', // Empty label
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0), // Adjust padding as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.tabsRouter.activeIndex == 1
                              ? const Color.fromRGBO(221, 176, 254, 1)
                              : Colors.white, // Border color
                          width: 6, // Adjust border width as needed
                        ),
                        color: widget.tabsRouter.activeIndex == 1
                            ? const Color.fromRGBO(221, 176, 254, 1)
                            : Colors.white, // Background color
                      ),
                      child: Icon(
                        Icons.music_note,
                        color: widget.tabsRouter.activeIndex == 1
                            ? Colors.white
                            : const Color.fromRGBO(
                                221, 176, 254, 1), // Icon color
                        size: 26, // Icon size
                      ),
                    ),
                    label: '', // Empty label
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0), // Adjust padding as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.tabsRouter.activeIndex == 2
                              ? const Color.fromRGBO(221, 176, 254, 1)
                              : Colors.white, // Border color
                          width: 6, // Adjust border width as needed
                        ),
                        color: widget.tabsRouter.activeIndex == 2
                            ? const Color.fromRGBO(221, 176, 254, 1)
                            : Colors.white, // Background color
                      ),
                      child: Icon(
                        Icons.star_half_outlined,
                        color: widget.tabsRouter.activeIndex == 2
                            ? Colors.white
                            : const Color.fromRGBO(
                                221, 176, 254, 1), // Icon color
                        size: 26, // Icon size
                      ),
                    ),
                    label: '', // Empty label
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0), // Adjust padding as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.tabsRouter.activeIndex == 3
                              ? const Color.fromRGBO(221, 176, 254, 1)
                              : Colors.white, // Border color
                          width: 6, // Adjust border width as needed
                        ),
                        color: widget.tabsRouter.activeIndex == 3
                            ? const Color.fromRGBO(221, 176, 254, 1)
                            : Colors.white, // Background color
                      ),
                      child: Icon(
                        Icons.hotel_class_outlined,
                        color: widget.tabsRouter.activeIndex == 3
                            ? Colors.white
                            : const Color.fromRGBO(
                                221, 176, 254, 1), // Icon color
                        size: 26, // Icon size
                      ),
                    ),
                    label: '', // Empty label
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
