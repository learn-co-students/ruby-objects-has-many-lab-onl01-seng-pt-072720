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
    # skip the #name by adding attr_accessor :name 

    def artist_name 
        self.artist.name  if self.artist != nil
        # artist.name if artist 
    end 
end 