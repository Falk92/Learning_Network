class UserMailer < ApplicationMailer
  default from: "f.heger@zeppelin-university.net"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'f.heger@zeppelin-university.net',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  @appname = "ZU | LearningNetwork"
  mail( :to => user.email,
        :subject => "Welcome to the #{@appname}!")
  end
end
