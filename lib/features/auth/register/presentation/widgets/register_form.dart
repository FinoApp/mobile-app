import 'package:dio/dio.dart';
import 'package:financial_ccounting/core/di/injection_container.dart';
import 'package:financial_ccounting/core/models/user_model/user.dart';
import 'package:financial_ccounting/core/widgets/button_fill.dart';
import 'package:financial_ccounting/features/auth/data/providers/lang_currency_provider.dart';
import 'package:financial_ccounting/features/auth/domain/auth_usecase.dart';
import 'package:financial_ccounting/features/auth/register/presentation/widgets/dropdown_button_currency.dart';
import 'package:financial_ccounting/features/auth/register/presentation/widgets/dropdown_button_language.dart';
import 'package:financial_ccounting/features/auth/register/presentation/widgets/text_field.dart';
import 'package:financial_ccounting/features/auth/utils/register_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends ConsumerStatefulWidget {
  const RegisterForm({super.key});

  @override
  ConsumerState<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends ConsumerState<RegisterForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  bool _isLoading = false;
  bool _isVisible = true;

  @override
  void dispose() {
    nameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final currentLanguage = ref.watch(languageProvider);
    final currentCurrency = ref.watch(currencyProvider);
    final l10n = ref.watch(localizationProvider);

    return Form(
      key: _globalKey,
      child: Column(
        children: [
          TextFieldwidget(
            validator: (value) => registerNameValidator(value, l10n),
            controller: nameController,
            icon: Icons.person_pin_circle_outlined,
            text: l10n.firstName,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
          ),

          SizedBox(height: 30),
          TextFieldwidget(
            validator: (value) => registerNameValidator(value, l10n),
            controller: lastNameController,
            icon: Icons.person_pin_circle_outlined,
            text: l10n.lastName,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
          ),
          SizedBox(height: 30),
          TextFieldwidget(
            validator: (value) => registerEmailValidator(value, l10n),
            controller: emailController,
            icon: Icons.alternate_email_outlined,
            text: l10n.email,
            contentPadding: EdgeInsets.symmetric(vertical: 20),
          ),

          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: DropdownButtonLanguage()),
              SizedBox(width: 10),
              Expanded(child: DropdownButtonCurrency()),
            ],
          ),
          SizedBox(height: 30),
          TextFieldwidget(
            validator: (value) => registerPasswordValidator(value, l10n),
            controller: passwordController,
            icon: Icons.lock_outline_rounded,
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
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            isHide: _isVisible,
          ),
          SizedBox(height: 30),

          TextFieldwidget(
            validator: (value) => registerConfirmPasswordValidator(
              value,
              passwordController.text,
              l10n,
            ),
            controller: confirmPasswordController,
            icon: Icons.lock_outline_rounded,

            text: l10n.confirmPassword,
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
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            isHide: _isVisible,
          ),

          SizedBox(height: 40),
          ButtonFill(
            child: _isLoading
                ? CircularProgressIndicator()
                : Text(
                    l10n.signUpButton,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: isLight
                          ? Theme.of(context).colorScheme.surface
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
            onTap: () async {
              if (_globalKey.currentState!.validate()) {
                setState(() {
                  _isLoading = true;
                });
                try {
                  await getIt<RegisterUsecase>().call(
                    PostRegisterUser(
                      firstName: nameController.text,
                      lastName: lastNameController.text,
                      email: emailController.text,
                      currency: currentCurrency.name,
                      language: currentLanguage.name,
                      password: passwordController.text,
                    ),
                  );
                  setState(() {
                    _isLoading = false;
                  });

                  if (!context.mounted) return;
                  context.go('/login');
                } on DioException catch (e) {
                  setState(() {
                    _isLoading = false;
                  });
                  if (e.response!.statusCode == 400) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.emailAlreadyUsed)),
                    );
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
