class Song
    attr_accessor :artist, :name
   
    @@all = []
   
    def initialize(name)
      @name = name
      @@all << self
    end
   
    def self.all
      @@all
    end

    def artist_name
       if self.artist == nil
        nil
       else
        self.artist = artist.name
        self.artist
       end
    end
  end