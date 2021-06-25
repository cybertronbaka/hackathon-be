class AiService
  attr_accessor :path

  def initialize(**args)
    @path = args[:path]
  end

  def run
    `python3 plant_detection.py "#{path}"`
  end
end