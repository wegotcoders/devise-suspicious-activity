class SuspiciousMailer < ActionMailer::Base
  default from: "some-email@your-domain.ext"

  def email_changed(id)
    @user = User.find(id)
    mail to: @user.email, subject: "Your email has changed"
  end
end
