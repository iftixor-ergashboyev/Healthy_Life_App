import 'package:flutter/material.dart';
import 'package:heathy_life/screen/settings_screen.dart';
import 'package:heathy_life/screen/support_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.primaryContainer,
                        Theme.of(context).colorScheme.primary.withOpacity(0.48),
                      ]
                  )
              ),
              child: Row(

                children: [
                  const Icon(Icons.health_and_safety,size: 50,),
                  const SizedBox(width: 10),
                  Text('Healthy Life', style: GoogleFonts.baloo2(fontSize: 25),)
                ],
              )),
          ListTile(
            leading: Icon(Icons.settings,size: 34,),
            title: Text('Settings',style: TextStyle(fontSize: 21),),
            onTap: () {
              // Handle settings page navigation

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.content_copy,size: 34,),
            title: Text('Support',style: TextStyle(fontSize: 21),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SupportPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}


//
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
  print( 'Dark Mode: ${settings.darkMode}');
  print( 'Font Size: ${settings.fontSize}');

  settings.updateTheme('Light');
  settings.toggleDarkMode();
  settings.increaseFontSize();

  print('Updated Theme: ${settings.theme}');
  print('Updated Dark Mode: ${settings.darkMode}');
  print('Updated Font Size: ${settings.fontSize}');
}