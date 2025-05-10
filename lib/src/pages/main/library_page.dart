part of '../pages.dart';

class LibraryPage extends StatelessWidget {
  LibraryPage({super.key});

  final List<ComicModel> comics = List.generate(
    20,
    (index) => ComicModel(
      title: 'Comic ${index + 1}',
      cover: 'assets/images/nano_machine.jpeg',
      description:
          'Nanotechnology meets martial arts at the Mashin Academy. Yeo-un’s mother may not be one of the High Priest’s six official wives, but his father’s blood still flows in his veins.',
      author: 'Hanjoong Wolya / Hyun Jeolmu',
      studio: 'Redice Studio / Indestructible',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            final comic = comics[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ComicDetailPage(comic: comic),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(12),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(comic.cover, fit: BoxFit.cover),
                    Container(color: Color.fromRGBO(0, 0, 0, 0.4)),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          comic.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black45,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
