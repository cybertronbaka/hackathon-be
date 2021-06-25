class AiService
  attr_accessor :path

  def initialize(**args)
    @path = args[:path]
  end

  def run
    exec("python3 #{Rails.root}/plant_detection.py #{path}")
  end
end