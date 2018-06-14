class UserMailer < ApplicationMailer
  default from: 'notify@email.com'

  def welcome_email
    @user = params[:user]
    @url = 'http://email.com/login'
    mail(to: @user.email, subject: 'Welcome to email app')
end
