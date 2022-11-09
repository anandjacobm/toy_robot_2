class CustomError < StandardError

  def initialize(message = 'Error in application')
    super(message)
  end
end
