class AiLabelParser
  attr_accessor :output

  def initialize(**args)
    @output = args[:output]
  end

  def run
    label, probab = output.split('/')
    name, disease = label.split('___')
    {
      disease: {
        crop: name.humanize,
          disease: name.humanize + disease.humanize,
          probablility: probab
      }
    }
  end
end