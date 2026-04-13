import 'package:financial_ccounting/core/widgets/navigation/nav_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  final Widget child;
  const NavBar({super.key, required this.child});

  static const _tabs = ['/home', '/progress', '/add', '/history', '/profile'];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(
      context,
    ).uri.toString(); //get current page location

    final currentIndex = _tabs.indexWhere((tab) {
      if (tab == '/home') return location == '/home'; //(bc all start with '/')
      return location.startsWith(tab);
    }); //if location not equivalent '/' then return current location

    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsetsGeometry.only(top: 30),
        child: FloatingActionButton(
          onPressed: () => context.go(_tabs[2]),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          splashColor: Colors.transparent,
          shape: CircleBorder(),
          child: Icon(CupertinoIcons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 8,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 14, //size place for button

          color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          padding: EdgeInsets.zero,
          height: 70,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavItem(
                      icon: CupertinoIcons.home,
                      text: 'Spending',
                      selected: currentIndex == 0,
                      onTap: () => context.go(_tabs[0]),
                    ),
                    NavItem(
                      icon: CupertinoIcons.rosette,
                      text: 'Progress',
                      selected: currentIndex == 1,
                      onTap: () => context.go(_tabs[1]),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    NavItem(
                      icon: CupertinoIcons.clock,
                      text: 'History',
                      selected: currentIndex == 3,
                      onTap: () => context.go(_tabs[3]),
                    ),
                    NavItem(
                      icon: CupertinoIcons.person_2,
                      text: 'Profile',
                      selected: currentIndex == 4,
                      onTap: () => context.go(_tabs[4]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: child,
    );
  }
}
