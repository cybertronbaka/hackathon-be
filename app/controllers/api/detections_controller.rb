module Api
  class DetectionsControllers < ::ApplicationController
    def index
      photo = UploadPhotoService.new(params: params, file: params[:image]).run
      output = AiService.new(path: photo.path).run
      result = AiLabelParser.new(output: output).run
      #Need to add all the solutions and disease descriptions
      render json: result
    end
  end
end