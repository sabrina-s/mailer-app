class Message
  attr_accessor :recipient, :subject, :message

  def initialize(params = {})
    @recipient = params[:recipient]
    @subject = params[:subject]
    @message = params[:message]
  end
end
