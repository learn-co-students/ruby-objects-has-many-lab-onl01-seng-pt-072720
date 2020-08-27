require 'pry'
class Artist

    attr_accessor :name
    
    def initialize(name) # initializes with a name and an array to store all future songs by artist instance
      @name = name
      @songs = []
    end
   
    def add_song(song) # add a new song to the artists song list and assigned the 
        
        @songs << song
        song.artist = self
    end
   
    def songs
      Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
    end

    def self.song_count
       Song.all.count
    end

  end