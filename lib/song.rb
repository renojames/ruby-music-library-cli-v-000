

class Song

  attr_accessor :name

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    v = self.new(name)
    v.save
    v
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def artist
    @artist
  end

end
