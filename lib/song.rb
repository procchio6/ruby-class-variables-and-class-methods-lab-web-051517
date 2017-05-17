class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = Hash.new(0)
    @@genres.each {|genre| count[genre] += 1}
    count
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each {|artist| count[artist] += 1}
    count
  end
end
