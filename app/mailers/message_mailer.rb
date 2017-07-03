class MessageMailer < ApplicationMailer
  default from: 'shopstickydevs@gmail.com'

  def send_message(message)
    @message = message
    mail(to: @message.recipient, subject: @message.subject)
  end
end
