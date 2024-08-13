import 'package:auto_route/auto_route.dart';
import 'package:carkey/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsRouter(
      duration: const Duration(microseconds: 250),
      routes: const [TapeRoute(), FavoriteRoute(), ProfileRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(44),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(44),
              child: BottomNavigationBar(
                unselectedItemColor: theme.dialogBackgroundColor,
                currentIndex: tabsRouter.activeIndex,
                backgroundColor: theme.cardColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  navBarItem(theme, './assets/icons/home_icon.svg'),
                  navBarItem(theme, './assets/icons/favorite_icon.svg'),
                  navBarItem(theme, './assets/icons/profile_icon.svg'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem navBarItem(ThemeData theme, String path) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(path),
      activeIcon: SvgPicture.asset(
        path,
        colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
      ),
      label: '',
    );
  }
}
