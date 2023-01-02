class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    
    Song(
      title: 'Friday',
      description: 'description 1',
      url: 'assets/music/Friday.mp3',
      coverUrl: 'assets/images/Friday.jpg',
    ),
    Song(
      title: 'Goosebumps',
      description: 'description 1',
      url: 'assets/music/Goosebumps.mp3',
      coverUrl: 'assets/images/Goosebumps.jpg',
    ),
    Song(
      title: 'ily',
      description: 'description 1',
      url: 'assets/music/ily.mp3',
      coverUrl: 'assets/images/ily.jpg',
    ),
    Song(
      title: 'More Than A Woman',
      description: 'description 1',
      url: 'assets/music/More_Than_A_Woman.mp3',
      coverUrl: 'assets/images/More_Than_A_Woman.jpg',
    ),
    Song(
      title: 'Paradise',
      description: 'description 1',
      url: 'assets/music/Paradise.mp3',
      coverUrl: 'assets/images/Paradise.jpg',
    ),
    Song(
      title: 'Rain On Me',
      description: 'description 1',
      url: 'assets/music/Rain_On_Me.mp3',
      coverUrl: 'assets/images/rain_on_me.jpg',
    ),
    Song(
      title: 'Roses',
      description: 'description 1',
      url: 'assets/music/Roses.mp3',
      coverUrl: 'assets/images/roses.jpg',
    ),
    Song(
      title: 'The Business',
      description: 'description 1',
      url: 'assets/music/The_Business.mp3',
      coverUrl: 'assets/images/the_business.jpg',
    ),
    Song(
      title: 'Head and Heart',
      description: 'description 1',
      url: 'assets/music/Head_and_Heart.mp3',
      coverUrl: 'assets/images/the_head_and_the_heart.jpg',
    ),
    Song(
      title: 'Your Love',
      description: 'description 1',
      url: 'assets/music/Your_Love.mp3',
      coverUrl: 'assets/images/your_love.jpg',
    ),
  ];
}
