class MP3Importer
  attr_reader :path

  def initialize(files)
    @files = files
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
end
