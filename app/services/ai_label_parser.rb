class AiLabelParser
  attr_accessor :output

  def initialize(**args)
    @output = args[:output]
  end

  def run
    output.gsub!(/[\r\n█]/, '')
    label, probablity = output.split('/')
    name, disease = label.split('___')
    {
      crop: name.humanize,
      disease: disease.humanize,
      disease_label: name.humanize + ' ' + disease.humanize,
      probablity: probablity.to_i
    }
  end
end