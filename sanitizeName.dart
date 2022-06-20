void main() {
  print(sanitizeName('99pippo!', 'pluto'));
  print(sanitizeName('99-*pippo!', 'pluto'));
  print(sanitizeName('99-*Pippo!', 'pluto'));
  print(sanitizeName('  99 -*#_Pippo!', 'pluto'));
}

String sanitizeName(String? s, String defaultName) {
  RegExp re = RegExp(r'[^a-z0-9\-\_ ]', caseSensitive: false);
  if (s == null) return defaultName;
  s = s.replaceAll(re, '').trim();
  if (s.isEmpty) return defaultName;
  return s;
}
