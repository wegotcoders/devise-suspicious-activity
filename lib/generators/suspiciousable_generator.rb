class SuspiciousableGenerator < Rails::Generators::Base
  source_root File.expand_path("../../../app/views/suspicious_mailer", __FILE__)

  def copy_initializer_file
    copy_file "send_email_change_notification.html.erb", "app/views/suspiciousable/mailer/send_email_change_notification.html.erb"
  end
end