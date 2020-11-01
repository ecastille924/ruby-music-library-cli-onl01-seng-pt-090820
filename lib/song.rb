class Song
    attr_accessor :name
    attr_reader :artist, :genre
  
    @@all = []
  
    def initialize(name, artist= nil)
      @name = name
      if artist != nil
        self.artist= artist
      end
    end

  
    def self.all
      @@all
    end
    
    def self.destroy_all
      @@all.clear
    end
    
    def save
      @@all << self
    end
    
    def self.create(name)
      song = Song.new(name) 
      song.save
      song
    end
    
    def artist=(artist)
      @artist = artist
    end
  
    
  end