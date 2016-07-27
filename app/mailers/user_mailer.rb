class UserMailer < ApplicationMailer
  default from: "example@example.net"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'example@example.net',
        :subject => "A new contact form message from #{name}")
  end
end
