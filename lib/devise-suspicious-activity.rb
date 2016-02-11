puts "Hello from Devise Suspicious Activity Gem"

require 'devise'

Devise.add_module :suspiciousable, :model => 'devise-suspicious-activity/model'
