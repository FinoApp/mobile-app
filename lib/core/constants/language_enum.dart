enum LanguageEnum {
  en('English', '🇺🇸'),
  es('Español', '🇪🇸'),
  fr('Français', '🇫🇷'),
  de('Deutsch', '🇩🇪'),
  pt('Português', '🇵🇹'),
  tr('Türkçe', '🇹🇷'),
  it('Italiano', '🇮🇹'),
  id('Bahasa Indonesia', '🇮🇩'),
  fil('Filipino', '🇵🇭'),
  th('ไทย', '🇹🇭'),
  vi('Tiếng Việt', '🇻🇳'),
  ja('日本語', '🇯🇵');

  final String title;
  final String flag;

  const LanguageEnum(this.title, this.flag);
}
