part of 'pages.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('First Screen Content', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
