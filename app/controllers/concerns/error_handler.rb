module ErrorHandler
  def self.included(clazz)
    clazz.class_eval do
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
      rescue_from StandardError, with: :standard_error
    end
  end

  private

  def standard_error(_e)
    render json: msg_format(_e.message), status: 400
  end

  def record_not_found(_e)
    render json: msg_format('record not found'), status: 404
  end

  def msg_format(error)
    {
      error: error
    }
  end
end
