class MP3Importer
  attr_accessor :path, :file_name

  def initialize(path)
    @path = path
    @file_name = file_name
  end

  def files
    Dir.chdir(@path) {| path | Dir.glob("*.mp3")}
    # Dir.entries(path).each {|filename| @file_names << "#{filename}"}
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end
