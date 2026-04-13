import 'dart:math';

import 'package:financial_ccounting/core/providers/is_login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'package:go_router/go_router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> circleScale;
  late Animation<double> logoOpacity;
  late Animation<double> circleOpacity;
  late Animation<double> fadeScreen;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2800),
    );

    circleOpacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.07, curve: Curves.ease),
      ),
    );
    circleScale = Tween(begin: 0.05, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.2, 0.6, curve: Curves.easeOut),
      ),
    );
    logoOpacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.62, 0.75, curve: Curves.ease),
      ),
    );
    fadeScreen = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.93, 1.0, curve: Curves.easeOut),
      ),
    );

    Future.microtask(() {
      Future.delayed(const Duration(milliseconds: 1000), () {
        controller.forward().then((_) {
          final user = ref.read(isLoginProvider);
          context.go(user ? '/home' : '/auth');
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return FadeTransition(
      opacity: fadeScreen,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,

        body: AnimatedBuilder(
          animation: controller,

          builder: (_, _) {
            return Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: circleOpacity.value,
                    child: CustomPaint(
                      painter: _CirclePainter(
                        scale: circleScale.value,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: SizedBox(
                        width: screenSize.width,
                        height: screenSize.height,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: logoOpacity.value,
                    child: SvgPicture.asset(
                      'images/main_icon.svg',
                      width: 120,
                      colorFilter: ColorFilter.mode(
                        Colors.white70,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  final double scale;
  final Color color;

  _CirclePainter({required this.scale, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = sqrt(size.width * size.width + size.height * size.height);
    canvas.drawCircle(center, maxRadius * scale, paint);
  }

  @override
  bool shouldRepaint(_CirclePainter old) => old.scale != scale;
}////to fill the entire screen with a circle