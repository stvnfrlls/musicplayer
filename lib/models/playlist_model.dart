import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Hip-Hop R&B Mix',
      songs: Song.songs,
      imageUrl:
          'https://i.pinimg.com/originals/b7/54/6b/b7546bca6cbf4fe7f474d213bb9c6a28.jpg',
    ),
    Playlist(
      title: 'Rock & Roll',
      songs: Song.songs,
      imageUrl:
          'https://i.scdn.co/image/ab67706c0000bebb3dcfbe1405813c33f87589e0',
    ),
    Playlist(
      title: 'Techno',
      songs: Song.songs,
      imageUrl:
          'https://external-preview.redd.it/QowRY4QJaGPwrqcpG7lASnrJehnVMH50AFbdqj4FYXg.jpg?auto=webp&s=254f2da39e5551ed6f846166ff499f0c4c718cf0',
    )
  ];
}
