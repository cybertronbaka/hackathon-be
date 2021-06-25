class DiseasesQuery
  attr_accessor :disease, :crop
  def initialize(**args)
    @disease = args[:disease]
    @crop = args[:crop]
  end

  def run
    Disease.find_by(crop: crop, disease: disease)
  end
end