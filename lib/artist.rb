class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all.push(self)
    @songs = []
  end

  def new_song(name, genre)
    @songs.push(Song.new(name, self, genre))
  end

end
