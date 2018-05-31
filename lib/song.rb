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
    # self.artist = Artist.find_or_create_by_name(name)
    # artist.add_song(self)
  end

#new_by_filename will strip ".mp3" from the filename, then parse it into its Artist and Song
  def self.new_by_filename(file_name)
    file_name.tr(".mp3")
    # artist_song_genre_array = file_name.split(" - ")
    # song = Song.new(artist_song_genre_array[1])
    # song.artist_name = artist_song_genre_array[0]
    song = Song.new(file_name.split(" - ")[0])
    song.artist_name = file_name.split(" - ")[1]
    song
  end
end
