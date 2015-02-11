# encoding: utf-8
class UserNotifier < ActionMailer::Base
  default from: "admin@leanyun.com"


  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(wishlist)
    @wishlist = wishlist

    mail( :from => '精益云学院 <admin@leanyun.com>',
          :to => '446146366@qq.com',
          :subject => '有人留创建了愿望' )
  end
end
