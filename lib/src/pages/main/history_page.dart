part of '../pages.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  final List<ComicModel> comics =
      List.generate(
        20,
        (index) => ComicModel(
          title: 'Comic ${index + 1}',
          cover: 'assets/images/nano_machine.jpeg',
          description:
              'Nanotechnology meets martial arts at the Mashin Academy. Yeo-un’s mother may not be one of the High Priest’s six official wives, but his father’s blood still flows in his veins.',
          author: 'Hanjoong Wolya / Hyun Jeolmu',
          studio: 'Redice Studio / Indestructible',
        ),
      ).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: comics.length,
        itemBuilder: (context, index) {
          final comic = comics[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ComicDetailPage(comic: comic),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  comic.cover,
                  fit: BoxFit.fitHeight,
                ), // Use the network image from your data
                title: Text(comic.title),
                subtitle: Text('Subtitle'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Handle delete action
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
