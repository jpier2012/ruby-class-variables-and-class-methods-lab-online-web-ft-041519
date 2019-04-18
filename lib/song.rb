class Song
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = 0
  @@genre_count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

  end
end
