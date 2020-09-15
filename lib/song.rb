class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end
  
  def count
    @@count
  end
  
  def genres
    all_genres = []
    @@genres.each do |genre|
      if !(all_genres.include?(genre))
        all_genres << genre
      end
    end
    all_genres
  end
  
end