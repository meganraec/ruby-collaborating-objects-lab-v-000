class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.artist_name=(name)
    songs_artist = Artist.find_or_create_by_name(name)
    name.artist = songs_artist
  end

#new_by_filename will strip ".mp3" from the filename, then parse it into its Artist and Song
  def self.new_by_filename(file_name)
    binding.pry
    new_array = file_name.split(" - ")
    song = Song.new(new_array[0])
    song.artist_name = new_array[1]
    song
  end
end
