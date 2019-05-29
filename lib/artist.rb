class Artist
  class Artist
  attr_accessor :song

  def initialize(song, title)
    @song = song
    @title = title
  end

  def add_song ()
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end

  
  
  
end