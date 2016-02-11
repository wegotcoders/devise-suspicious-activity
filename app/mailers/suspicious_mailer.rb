class SuspiciousMailer < ActionMailer::Base
  default from: "some-email@your-domain.ext"

  def email_changed(klass)
    @resource = klass.class.find(klass.id)
    mail to: @resource.email, subject: "Your email has changed"
  end
end