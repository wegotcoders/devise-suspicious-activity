module Devise
  module Models
    module Suspiciousable
      extend ActiveSupport::Concern

      included do
        before_update :notify_old_email
      end

      def notify_old_email
        SuspiciousMailer.email_changed(id).deliver_now
      end
    end
  end
end
