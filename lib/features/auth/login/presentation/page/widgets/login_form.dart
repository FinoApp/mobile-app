import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/providers/is_login_provider.dart';
import 'package:financial_ccounting/core/providers/user_id_provdier.dart';
import 'package:financial_ccounting/core/widgets/button_fill.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/auth/presentation/providers/auth_usecase_provider.dart';
import 'package:financial_ccounting/features/auth/register/presentation/widgets/text_field.dart';
import 'package:financial_ccounting/features/auth/utils/login_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _isVisible = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final l10n = ref.watch(localizationProvider);
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          TextFieldwidget(
            validator: (value) => loginEmailValidator(value, l10n),
            controller: emailController,
            icon: Icons.alternate_email_outlined,
            text: l10n.email,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
          ),
          SizedBox(height: 30),

          TextFieldwidget(
            validator: (value) => loginPasswordValidator(value, l10n),
            controller: passwordController,
            icon: Icons.lock_outline_rounded,
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            isHide: _isVisible,
            text: l10n.password,
            suffix: GestureDetector(
              onTap: () => setState(() {
                _isVisible = !_isVisible;
              }),
              child: Icon(
                _isVisible
                    ? Icons.visibility_off
                    : Icons.remove_red_eye_outlined,
              ),
            ),
          ),

          SizedBox(height: 40),
          ButtonFill(
            child: _isLoading
                ? CircularProgressIndicator()
                : Text(
                    l10n.signInButton,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: isLight
                          ? Theme.of(context).colorScheme.surface
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
            onTap: () async {
              FocusScope.of(context).unfocus();
              if (_globalKey.currentState!.validate()) {
                setState(() {
                  _isLoading = true;
                });
                try {
                  final userId = await ref
                      .read(loginUsecaseProvider)
                      .call(
                        PostLoginUser(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      );
                  setState(() {
                    _isLoading = false;
                  });
                  ref.read(userIdProvider.notifier).state = userId;
                  ref.read(isLoginProvider.notifier).state = true;
                } on DioException catch (e) {
                  setState(() {
                    _isLoading = false;
                  });
                  if (e.response!.statusCode == 422 ||
                      e.response!.statusCode == 401) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.enterCorrectEmailOrPassword)),
                    );
                  } else if (e.response!.statusCode == 404) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(l10n.userNotFound)));
                  }
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
