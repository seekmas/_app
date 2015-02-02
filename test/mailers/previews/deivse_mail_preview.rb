#/test/mailers/previews/devise_mail_preview.rb

class DeviseMailPreview < ActionMailer::Preview
  def confirmation_instructions
    @user = User.find(1);
    Devise::Mailer.confirmation_instructions(@user, "Token")
  end

  def reset_password_instruction
    @user = User.find(1);
    Devise::Mailer.reset_password_instructions(@user, "Token")
  end

  def unlock_instructions
    @user = User.find(1);
    Devise::Mailer.reset_password_instructions(@user, "Token")
  end
end