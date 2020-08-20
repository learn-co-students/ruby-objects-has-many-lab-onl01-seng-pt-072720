class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select { self }
  end

  def add_song(new_song)
    new_song.artist = self
  end

  def add_song_by_name(new_song)
    new_song = Song.new(new_song)
    new_song.artist = self
  end

  def self.song_count
    Song.all.select { |so| so.artist }.count
  end

end
