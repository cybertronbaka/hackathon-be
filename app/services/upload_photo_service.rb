class UploadPhotoService
  attr_accessor :params, :file, :file_name, :photo
  def initialize(**args)
    @params = args[:params]
    @file = args[:file]
  end

  def run
    upload_file
    photo
  end

  def upload_file
    @file_name = SecureRandom.hex(10) + file.original_filename
    File.open("public/disease/#{file_name}", 'wb') do |file|
      file.write(file.read)
    end
    true
  end

  def photo
    @photo ||= Photo.create!(path: file_name)
  end
end