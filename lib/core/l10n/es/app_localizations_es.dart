import '../app_localizations.dart';

class AppLocalizationsEs extends AppLocalizations {
  // Auth - Login
  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Registrarse';

  @override
  String get dontHaveAccount => '¿No tienes cuenta?';

  @override
  String get alreadyHaveAccount => '¿Ya tienes cuenta?';

  @override
  String get signInButton => 'INICIAR SESIÓN';

  @override
  String get signUpButton => 'REGISTRARSE';

  // Auth - Fields
  @override
  String get email => 'Correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get firstName => 'Nombre';

  @override
  String get lastName => 'Apellido';

  @override
  String get confirmPassword => 'Confirmar contraseña';

  // Auth - Errors
  @override
  String get enterCorrectEmailOrPassword =>
      'Ingresa un correo o contraseña correctos';

  @override
  String get userNotFound => 'Usuario no encontrado';

  @override
  String get emailAlreadyUsed => 'El correo ya está en uso';

  // Validators - Login
  @override
  String get enterEmailAddress => '¡Ingresa tu correo electrónico!';

  @override
  String get enterCorrectEmail => 'Ingresa un correo válido';

  @override
  String get enterPassword => 'Ingresa tu contraseña';

  // Validators - Register
  @override
  String get enterFirstAndLastName => 'Ingresa tu nombre y apellido';

  @override
  String get maximumLength50 => 'Longitud máxima — 50 caracteres';

  @override
  String get enterYourEmail => 'Ingresa tu correo electrónico';

  @override
  String get enterCorrectEmailAddress =>
      'Ingresa una dirección de correo válida';

  @override
  String get enterYourPassword => 'Ingresa tu contraseña';

  @override
  String get passwordTooShort =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get passwordsDontMatch => 'Las contraseñas no coinciden';

  // Validators - Fields
  @override
  String get fillInThisField => 'Completa este campo';

  // Navigation
  @override
  String get navSpending => 'Gastos';

  @override
  String get navProgress => 'Progreso';

  @override
  String get navHistory => 'Historial';

  @override
  String get navProfile => 'Perfil';

  // Main Finance Page
  @override
  String get spendingChart => 'GRÁFICO DE GASTOS';

  @override
  String get expensesByCategory => 'GASTOS POR CATEGORÍA';

  @override
  String get lastExpenses => 'ÚLTIMOS GASTOS';

  @override
  String get seeAll => 'Ver todo >';

  // Add Finance Page
  @override
  String get addPageTitle => 'Agregar';

  @override
  String get titleLabel => 'Título';

  @override
  String get amountLabel => 'Monto';

  @override
  String get categoryLabel => 'Categoría';

  @override
  String get dateLabel => 'Fecha';

  @override
  String get noteLabel => 'Nota';

  @override
  String get pleaseSelectCategory => 'Por favor selecciona una categoría';

  @override
  String get expenseAdded => 'Gasto agregado';

  @override
  String get failedToAddExpense => 'No se pudo agregar el gasto';

  // History Page
  @override
  String get historyPageTitle => 'Historial';

  @override
  String get noExpensesYet => 'Sin gastos aún';

  @override
  String get noExpensesDescription =>
      'No tienes gastos registrados. ¡Agrega\nun nuevo gasto para empezar!';

  @override
  String get addExpenseButton => 'Agregar gasto';

  // Profile Page
  @override
  String get profilePageTitle => 'Perfil';

  @override
  String get version => 'Versión 1.0.0';

  // Settings Menu
  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get currency => 'Moneda';

  @override
  String get language => 'Idioma';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get safety => 'Seguridad';

  @override
  String get help => 'Ayuda';

  // Log Out Modal
  @override
  String get logOut => 'Cerrar sesión';

  @override
  String get logOutConfirmation =>
      '¿Estás seguro de que quieres cerrar sesión?';

  @override
  String get cancel => 'Cancelar';

  // Support Page
  @override
  String get supportPageTitle => 'Soporte';

  @override
  String get contactUs => 'Contáctanos';

  @override
  String get supportDescription =>
      '¿Tienes preguntas, sugerencias o encontraste un error? ¡Nos encantaría saber de ti!';

  @override
  String get tapToCopyEmail => 'Toca para copiar el correo';

  @override
  String get faq => 'Preguntas frecuentes';

  @override
  String get faqQuestion1 => '¿Cómo agrego un nuevo gasto?';

  @override
  String get faqAnswer1 =>
      'Toca el botón «+» en la barra de navegación inferior y completa los detalles del gasto.';

  @override
  String get faqQuestion2 => '¿Puedo editar o eliminar un gasto?';

  @override
  String get faqAnswer2 =>
      'Sí, ve a Historial o Inicio, encuentra el gasto y desliza hacia la izquierda para eliminar o toca para editar.';

  @override
  String get faqQuestion3 => '¿Cómo cambio la moneda?';

  @override
  String get faqAnswer3 =>
      'Ve a Perfil → Moneda y selecciona tu moneda preferida.';

  // Theme Page
  @override
  String get themePageTitle => 'Tema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeSystem => 'Sistema';

  // Language Page
  @override
  String get languagePageTitle => 'Idioma';

  @override
  String get changeLanguage => 'Cambiar idioma';

  @override
  String get languageEditedSuccessfully => 'Idioma actualizado correctamente';

  // Currency Page
  @override
  String get currencyPageTitle => 'Moneda';

  @override
  String get changeCurrency => 'Cambiar moneda';

  @override
  String get currencyEditedSuccessfully => 'Moneda actualizada correctamente';

  // Generic errors
  @override
  String get somethingWentWrong => 'Algo salió mal...';

  // Expense Detail Modal
  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  // Edit Expense Modal
  @override
  String get editExpense => 'Editar gasto';

  @override
  String get save => 'Guardar';

  @override
  String get expenseUpdated => 'Gasto actualizado';

  @override
  String get failedToUpdateExpense => 'No se pudo actualizar el gasto';

  // Edit Category Modal
  @override
  String get editCategory => 'Editar categoría';

  @override
  String get icon => 'Ícono';

  @override
  String get categoryUpdated => 'Categoría actualizada';

  @override
  String get failedToUpdateCategory => 'No se pudo actualizar la categoría';

  @override
  String get enterTitleHint => 'Ingresa el título';

  @override
  String get enterEmojiHint => 'Ingresa un emoji';

  // All Categories Page
  @override
  String get categoriesPageTitle => 'Categorías';

  @override
  String get color => 'Color';

  // New Category Modal
  @override
  String get newCategory => 'Nueva categoría';

  @override
  String get createButton => 'Crear';

  @override
  String get failedToCreateCategory => 'No se pudo crear la categoría';

  // Progress Page
  @override
  String get progressPageTitle => 'Tu progreso';

  @override
  String get comingSoon => 'Próximamente...';
}
