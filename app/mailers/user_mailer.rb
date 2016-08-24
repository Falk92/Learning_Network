class UserMailer < ApplicationMailer
  default from: "f.heger@zeppelin-university.net"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'f.heger@zeppelin-university.net',
        :subject => "A new contact form message from #{name}")
  end
end
