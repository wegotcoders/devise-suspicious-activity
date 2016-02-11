module Devise
  module Models
    module Suspiciousable
      extend ActiveSupport::Concern

      include do
        after_save :notify_old_email
      end

      def notify_old_email

      end
    end
  end
end
