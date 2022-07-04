class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push genre
    @@artists.push artist
  end

  def self.count
    @@count
  end

  def self.artists
    artistlist = []
    @@artists.each do |artist|
      if !(artistlist.include? artist)
        artistlist.push artist
      end
    end
    artistlist
  end

  def self.genres
    genrelist = []
    @@genres.each do |genre|
      if !(genrelist.include? genre)
        genrelist.push genre
      end
    end
    genrelist
  end

  def self.genre_count
    genrehash = {}
    @@genres.each do |genre|
      if genrehash.keys.include? genre
        genrehash[genre] += 1
      else
        genrehash[genre] = 1
      end
    end
    genrehash
  end

  def self.artist_count
    artisthash = {}
    @@artists.each do |artist|
      if artisthash.keys.include? artist
        artisthash[artist] += 1
      else
        artisthash[artist] = 1
      end
    end
    artisthash
  end
end