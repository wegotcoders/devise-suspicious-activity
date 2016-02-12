class SuspiciousMailer < ActionMailer::Base

  def send_email_change_notification(obj)
    mail to: get_original_email(obj), from: devise_admin_address, subject: "Your email has changed"
  end

  def get_original_email(obj)
    @email = obj.class.find(obj.id).email
  end

  def devise_admin_address
    Devise.setup(&:mailer_sender)
  end
end
