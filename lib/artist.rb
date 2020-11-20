class Artist 

    attr_accessor :name 
    @@songs = []
    
    def initialize(name)
        @name = name 
    end 

    def add_song(song)
        song.artist =(self) 
    end 

    def songs
        @@songs
    end 

    def add_song_by_name(song_title) #take in arg of title
        song = Song.new(song_title) #associate with Song obj
        song.artist = self #returns the artist that it belongs to
    end 

    def self.song_count #class method of all songs
        @@songs.length  #@@songs returns an array of all songs / .length counts
    end 

end 