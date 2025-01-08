Rails.application.config.after_initialize do
  Rails.application.config.spree_backend.main_menu.insert_after('stocks', Spree::Admin::MainMenu::SubscriptionItemBuilder.new.build) if Spree::Core::Engine.backend_available?
end
