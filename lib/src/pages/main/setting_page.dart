part of '../pages.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Dark Mode'),
              subtitle: Text('Display Theme'),
              trailing: Switch(
                value: themeProvider.themeData == ThemeDataStyle.dark,
                onChanged: (value) {
                  themeProvider.toggleTheme();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
