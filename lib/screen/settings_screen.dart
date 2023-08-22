import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  int fontSize = 16;

  void toggleDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  void increaseFontSize() {
    setState(() {
      fontSize++;
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 1) {
        fontSize--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListTile(
            title: Text('Dark Mode'),
            value: darkMode,
            onChanged: (value) {
              toggleDarkMode();
            },
          ),
          ListTile(
            title: Text('Font Size'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    decreaseFontSize();
                  },
                ),
                Text(fontSize.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    increaseFontSize();
                  },
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Notification Settings'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              // Notification settings logic
            },
          ),
          ListTile(
            title: Text('Language Settings'),
            trailing: Icon(Icons.language),
            onTap: () {
              // Language settings logic
            },
          ),
          ListTile(
            title: Text('Privacy Settings'),
            trailing: Icon(Icons.lock),
            onTap: () {
              // Privacy settings logic
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}