class Song
    
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre
  
    #
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
  
  
  
    def initialize(name, singer, genre)
      @name = name
      @artist = singer
      @genre = genre
      @@count += 1
      @@artists << @artist
      @@genres << @genre
    end
  
    def self.artists
      @@artists.uniq!
    end
  
    def self.genres
      @@genres.uniq!
    end
    
    def self.count
      @@count
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end    

