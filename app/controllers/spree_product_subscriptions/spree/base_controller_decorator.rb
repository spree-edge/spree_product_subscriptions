module SpreeProductSubscriptions
  module Spree
    module BaseControllerDecorator

      def self.prepended(base)
        base.add_flash_types :success, :error
      end

    end
  end
end

Spree::BaseController.prepend ::SpreeProductSubscriptions::Spree::BaseControllerDecorator
