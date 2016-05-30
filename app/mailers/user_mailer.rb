class UserMailer < ApplicationMailer

  def password_reset(user)
    @user = user
    link = edit_password_reset_url(@user.reset_token, email: @user.email)
    mail(to: user.email, subject: "Password reset", body: "To reset your password click the link below:
#{link}
This link will expire in two hours.
If you did not request your password to be reset, please ignore this email and
your password will stay as it is.")
  end

end