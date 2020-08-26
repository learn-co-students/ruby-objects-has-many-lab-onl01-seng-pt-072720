class Song 
  attr_accessor :title
  

  def initialize(title)
    @title = title
    @songs = [] 
  end
  
  def songs 
    @songs
  end 
  
  def self.all 
    @@all
  end 
  
end 