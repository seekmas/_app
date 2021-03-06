# encoding: utf-8
class DeviseMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that you mailer uses the devise views

  def confirmation_instructions(record, token, opts={})
    headers["Custom-header"] = "精益云学院 邮件激活"
    super
  end


  def reset_password_instructions(record, token, opts={})
    headers["Custom-header"] = "精益云学院 找回密码"
    super
  end

  def unlock_instructions(record, token, opts={})
    headers["Custom-header"] = "精益云学院 解锁邮箱"
    super
  end

end