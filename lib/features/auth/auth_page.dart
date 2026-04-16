import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                'Welcome',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontSize: 30),
              ),
              SizedBox(height: 12),
              Text(
                'To start using the app, log in to your account or \n'
                ' create new.',
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary,
                      spreadRadius: -70,
                      blurRadius: 100,
                    ),
                  ],
                ),
                child: Image.asset(
                  width: 200,
                  isLight ? 'assets/images/auth_image.png' : 'assets/images/auth_dark.png',
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white38,

                          border: Border.all(
                            width: 2,
                            color: isLight
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(
                                  color: isLight
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                        ),
                      ),
                      onTap: () => context.go('/login'),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(

                          color: Theme.of(
                            context,
                          ).colorScheme.secondary.withGreen(50),
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   stops: [0.0, 0.3],
                          //   colors: [
                          //     Theme.of(context).colorScheme.primary,
                          //     isLight
                          //         ? Theme.of(
                          //             context,
                          //           ).colorScheme.secondary.withGreen(80)
                          //         : Theme.of(
                          //             context,
                          //           ).colorScheme.primary.withAlpha(100),
                          //   ],
                          // ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(
                                  color: isLight
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                        ),
                      ),
                      onTap: () => context.go('/register'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
