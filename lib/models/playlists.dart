class Playlist {
  String name;
  String imageUrl;
  String ownerImage;
  String ownerName;
  int count;

  Playlist(
      this.name, this.imageUrl, this.ownerImage, this.ownerName, this.count);

  static Playlist p1 = Playlist("ESL One Cologne, 2020", "assets/images/p1.jpg",
      "assets/images/a1.jpg", "John Adam", 123);
  static Playlist p2 = Playlist("90s Classics", "assets/images/p2.jpg",
      "assets/images/a2.jpg", "Kevin Malone", 56);
  static Playlist p3 = Playlist("Oldies", "assets/images/p3.jpg",
      "assets/images/a3.jpg", "Andy Bernard", 258);

  static List<Playlist> fetchPlaylists = [p1, p2, p3];
}
