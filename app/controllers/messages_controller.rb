class MessagesController < ApplicationController

  def new
  end

  def create
    message = Message.new(message_params)
    MessageMailer.send_message(message).deliver_now

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:subject, :recipient, :message)
  end

end
