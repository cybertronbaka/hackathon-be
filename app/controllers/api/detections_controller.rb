module Api
  class DetectionsController < ::ApplicationController
    def index
      json = {
          disease: parsed_label.merge!(
            video_url: queried_disease&.url, 
            description: queried_disease&.description,
            probablity: queried_disease&.probablity
          )
      }
      render json: json
    end

    def queried_disease
      @queried_disease ||= DiseasesQuery.new(crop: crop, disease: disease).run
    end

    def ai_value
      @ai_value ||= AiService.new(path: photo.path).run
    end

    def crop
      @crop ||= parsed_label.dig(:crop)
    end

    def parsed_label
      @parsed_label ||= AiLabelParser.new(output: ai_value).run
    end

    def disease
      @disease ||= parsed_label.dig(:disease)
    end

    def photo
      @photo ||= UploadPhotoService.new(params: params, file: params[:image]).run
    end
  end
end