class UserMailer < ApplicationMailer
  default from: 'notify@email.com'
  layout 'mailer_layout'

  def welcome_email
    @user = params[:user]
    @url = 'http://email.com/login'
    mail(to: @user.email,
         subject: 'Welcome to email app') do |format|
         format.html { render 'main', formats: [:mjml] }
       end
  end
end
