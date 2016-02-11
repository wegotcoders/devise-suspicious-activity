class SuspiciousMailer < ActionMailer::Base

  def send_email_change_notification(klass)
    mail to: get_original_email(klass), from: devise_admin_address, subject: "Your email has changed"
  end

  def get_original_email(klass)
    @email = klass.class.find(klass.id).email
  end

  def devise_admin_address
    Devise.setup(&:mailer_sender)
  end
end
