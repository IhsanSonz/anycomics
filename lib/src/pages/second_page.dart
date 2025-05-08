part of 'pages.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Second Screen Content', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
