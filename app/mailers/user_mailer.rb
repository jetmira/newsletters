class UserMailer <ActionMailer::Base
   default from: 'notifications@example.com'
def registration_confirmation(user)
  @user = user
  mail(:to => "#{user.name} <#{user.email}>", :subject => "Please confirm your registation")
end

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
