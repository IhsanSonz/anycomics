part of '../pages.dart';

class ComicDetailPage extends StatelessWidget {
  ComicDetailPage({super.key, required this.comic});

  final ComicModel comic;

  final List<ChapterModel> chapters =
      List.generate(
        20,
        (index) => ChapterModel(
          title: 'Chapter Title ${index + 1}',
          index: index.toDouble() + 1,
        ),
      ).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 124,
                    height: 164,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(comic.cover),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  // Title and Author Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comic.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.person_outline, size: 18),
                          SizedBox(width: 4),
                          Text(
                            comic.author ?? '-',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.brush, size: 18),
                          SizedBox(width: 4),
                          Text(
                            comic.studio ?? '-',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text('Ongoing', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            if (comic.description != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  comic.description ?? '',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '${chapters.length} chapters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chapters.length,
              itemBuilder: (context, index) {
                final chapter = chapters[index];
                final chapterIndex = NumberFormat(
                  '#,##0.#',
                ).format(chapter.index);
                return ListTile(
                  title: Text('Chapter $chapterIndex - ${chapter.title}'),
                  subtitle: Text('${index == 0 ? '3 days ago' : '30/04/2025'}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
