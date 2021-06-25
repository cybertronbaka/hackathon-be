class AiLabelParser
  attr_accessor :output

  def initialize(**args)
    @output = args[:output]
  end

  def run
    output.gsub!(/[\r\n█]/, '')
    name, disease = output.split('___')
    {
      crop: name.humanize,
      disease: disease.humanize,
      disease_label: name.humanize + ' ' + disease.humanize
    }
  end
end