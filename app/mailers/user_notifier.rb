class UserNotifier < ActionMailer::Base
  default from: "admin@mot99.com"


  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => '感谢你的注册 谢谢' )
  end

end
