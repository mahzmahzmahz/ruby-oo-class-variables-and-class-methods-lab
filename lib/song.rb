require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    
    def initialize(name_param, artist_param, genre_param)
        @name = name_param
        @artist = artist_param
        @genre = genre_param
        @@count += 1
        @@genres << genre_param
        @@artists << artist_param

    end

    @@count = 0

    def self.count
        @@count
    end

    @@genres = []

    def self.genres
        @@genres.uniq
    end

    @@artists = []

    def self.artists 
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |type|
            if genre_count[type]
                genre_count[type] += 1
            else
                genre_count[type] = 1
            end
        end
        genre_count
    end


    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
      end

end




#binding.pry
0