class MainContent {
  final String userName, topic, dateTime;

  MainContent({
    required this.userName,
    required this.topic,
    required this.dateTime,
  });

  static List<MainContent> getContent() {
    List<MainContent> contents = [];

    contents.add(MainContent(
        userName: 'John Smith',
        topic: 'Test create content first one',
        dateTime: '03/14/2024 09:58 AM'));

    contents.add(MainContent(
        userName: 'Michael',
        topic: 'Test create content second one',
        dateTime: '03/14/2024 09:58 AM'));

    contents.add(MainContent(
        userName: 'David Scorer',
        topic: 'Test create content Third one',
        dateTime: '03/14/2024 09:58 AM'));

    contents.add(MainContent(
        userName: 'Seraphines',
        topic: 'Test create content fourth one',
        dateTime: '03/14/2024 09:58 AM'));
    
    contents.add(MainContent(
        userName: 'Thomas J.',
        topic: 'Test create content fifth one',
        dateTime: '03/14/2024 09:58 AM'));


    return contents;
  }
}
