require 'pry'

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

    @@count += 1
    @@artists << artist
    @@genres << genre

    if !@@artist_count.has_key?(artist)
      @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end

    if !@@genre_count.has_key?(genre)
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end
  end

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end

end

song = Song.new("Smells Like Teen Spirit", "Nirvana", "Grunge")
song = Song.new("In bloom", "Nirvana", "Grunge")
song = Song.new("Numb", "Linkin Park", "Alternative")
song = Song.new("Under the Bridge", "Red Hot Chili Peppers", "Rock")
song = Song.new("The Zephyr Song", "Red Hot Chili Peppers", "Rock")

puts Song.artist_count
puts Song.genre_count
puts Song.count
