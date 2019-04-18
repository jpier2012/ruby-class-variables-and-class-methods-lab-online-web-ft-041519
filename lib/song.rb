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
      @@artists.each {|artist|
        if !@@artist_count.has_key?(artist)
          @@artist_count[artist] = 1
        else
          @@artist_count[artist] += 1
        end
      }
    @@genre_count =
      @@genres.each {|genre|
        if !@@genre_count.has_key?(genre)
          @@genre_count[genre] = 1
        else
          @@genre_count[genre] += 1
        end
      }
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

end
