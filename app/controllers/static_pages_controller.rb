class StaticPagesController < ApplicationController
  def index
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'lene@zeppelin-university.net',
      :subject => "Neue Kontaktanfrage von #{@name}",
      :body => @message).deliver
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver
  end
end
