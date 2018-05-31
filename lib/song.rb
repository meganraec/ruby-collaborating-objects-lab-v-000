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
    new_array = file_name.split(" - ")
    artistname = new_array[0]
    songname = new_array[1]
    new_instance = self.new(songname)
    new_instance.artist_name = Artist.find_or_create_by_name(artistname)
    # new_instance_artist.add_song(new_instance)
    new_instance
  end
end
