puts "Hello from Devise Suspicious Activity Gem"

require 'devise'
require '../../app/mailers/suspicious_mailer'

module Suspiciousable
  class Engine < Rails::Engine
  end
end

Devise.add_module :suspiciousable, :model => 'devise-suspicious-activity/model'
