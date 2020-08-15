# The artist should have many songs and 
# a song should belong to an artist.

class Song
    attr_accessor :artist
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def name 
        @name 
    end 

    def artist_name 
        self.artist.name  if self.artist != nil
    end 
end 