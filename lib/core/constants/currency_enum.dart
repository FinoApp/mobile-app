enum CurrencyEnum {
  usd('US Dollar', '\$'),
  eur('Euro', '€'),
  cad('Canadian Dollar', 'C\$'),
  rub('Russian Ruble', '₽'),
  tenge('Kazakhstani Tenge', '₸'),
  hryvna('Ukrainian Hryvnia', '₴');

  final String title;
  final String symbol;

  const CurrencyEnum(this.title, this.symbol);
}
