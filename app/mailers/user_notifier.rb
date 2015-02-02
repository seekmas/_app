# encoding: utf-8
class UserNotifier < ActionMailer::Base
  default from: "admin@leanyun.com"


  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => '感谢你的访问' )
  end

end
