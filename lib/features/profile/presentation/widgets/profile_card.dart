import 'package:financial_ccounting/core/providers/user_provider.dart';
import 'package:financial_ccounting/features/auth/utils/get_initials.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileCard extends ConsumerWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final user = ref.watch(userProvider);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3F8A57), Color(0xFF2E6F47), Color(0xFF1E5A36)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      child: user.when(
        data: (user) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 24),

            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white24,
              child: Text(
                '${getInitials(user.firstName)}${getInitials(user.lastName)}',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: isLight
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              '${user.firstName} ${user.lastName}',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: isLight
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 4),
            Text(
              user.email,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: isLight
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSurface,
              ),
            ),

            SizedBox(height: 10),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(250, 20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 20, 56, 34),
                        Color(0xFF1E5A36),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Today balance:',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: isLight
                            ? Theme.of(
                                context,
                              ).colorScheme.onPrimary.withValues(alpha: 30)
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '249\$',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: isLight
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        loading: () =>
            SizedBox(height: 70, width: 70, child: CircularProgressIndicator()),
        error: (er, _) => Text(er.toString()),
      ),
    );
  }
}
