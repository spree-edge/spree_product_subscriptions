module Spree
  module Admin
    module MainMenu
      class SubscriptionItemBuilder
        include ::Spree::Core::Engine.routes.url_helpers

        def build
          items = [
            ::Spree::Admin::MainMenu::ItemBuilder.new('subscriptions', ::Spree::Core::Engine.routes.url_helpers.admin_subscriptions_path)
                                                 .with_manage_ability_check(::Spree::Subscription)
                                                 .with_match_path('/subscriptions')
                                                 .build,
            ::Spree::Admin::MainMenu::ItemBuilder.new('subscription_frequencies', ::Spree::Core::Engine.routes.url_helpers.admin_subscription_frequencies_path)
                                                 .with_manage_ability_check(::Spree::SubscriptionFrequency)
                                                 .with_match_path('/subscription_frequencies')
                                                 .build
          ]

          ::Spree::Admin::MainMenu::SectionBuilder.new('subscriptions', 'calendar.svg')
                                                  .with_manage_ability_check(::Spree::Subscription)
                                                  .with_items(items)
                                                  .build
        end
      end
    end
  end
end
