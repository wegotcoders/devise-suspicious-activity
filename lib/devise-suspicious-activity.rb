require 'devise'

module Suspiciousable
  class Engine < Rails::Engine
  end
end

Devise.add_module :suspiciousable, :model => 'devise-suspicious-activity/model'
