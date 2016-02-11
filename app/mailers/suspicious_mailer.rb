class SuspiciousMailer < ActionMailer::Base

  def email_changed(klass)
    @resource = klass.class.find(klass.id)
    mail to: @resource.email, from: devise_admin_address, subject: "Your email has changed"
  end

  def devise_admin_address
    Devise.setup(&:mailer_sender)
  end
end
