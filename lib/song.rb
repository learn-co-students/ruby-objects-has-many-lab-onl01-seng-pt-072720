class Song 
  attr_accessor :artist, :name
  
  @@all = [] 
  
  def initialize(name)
    @@all << self 
    @name = name 
  end
  
  def self.all 
    @@all
  end 
  
  def artist_name
    artist ? self.artist.name : nil 
  end 
  
end 