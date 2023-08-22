class Settings {
  String theme;
  bool darkMode;
  int fontSize;

  Settings({this.theme = 'Default', this.darkMode = false, this.fontSize = 16});

  void updateTheme(String newTheme) {
    theme = newTheme;
  }

  void toggleDarkMode() {
    darkMode = !darkMode;
  }

  void increaseFontSize() {
    fontSize++;
  }

  void decreaseFontSize() {
    if (fontSize > 1) {
      fontSize--;
    }
  }
}

void main() {
  Settings settings = Settings();

  print('Current Theme: ${settings.theme}');
  print('Dark Mode: ${settings.darkMode}');
  print('Font Size: ${settings.fontSize}');

  settings.updateTheme('Light');
  settings.toggleDarkMode();
  settings.increaseFontSize();

  print('Updated Theme: ${settings.theme}');
  print('Updated Dark Mode: ${settings.darkMode}');
  print('Updated Font Size: ${settings.fontSize}');
}