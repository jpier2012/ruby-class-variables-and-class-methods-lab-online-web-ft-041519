class Song
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    !@@artists.include?(artist) ? @@artists << artist : nil
    !@@genres.include?(genre) ? @@genres << genre : nil
    @@count += 1
    @@artist_count =  
      
  end

  def self.count
    @@count
  end

end
