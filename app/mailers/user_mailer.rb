class UserMailer < ApplicationMailer
  default from: "lene@zeppelin-university.net"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'lene@zeppelin-university.net',
        :subject => "Neue Kontaktanfrage von #{name}")
  end

  def welcome(user)
  @appname = "ZU | LearningNetwork"
  mail( :to => user.email,
        :subject => "Willkommen zum #{@appname}!")
  end
end
