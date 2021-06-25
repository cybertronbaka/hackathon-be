class AiLabelParser
  attr_accessor :output

  def initialize(**args)
    @output = args[:output]
  end

  def run
    output.gsub!(/[\r\n█]/,'')
    name, disease = output.split('___')
    {
      disease: {
        crop: name.humanize,
        disease: name.humanize + ' ' + disease.humanize
      }
    }
  end
end