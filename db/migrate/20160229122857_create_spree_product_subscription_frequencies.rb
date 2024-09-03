class CreateSpreeProductSubscriptionFrequencies < ActiveRecord::Migration[7.1]
  def change
    create_table :spree_product_subscription_frequencies do |t|
      t.references :product, index: true
      t.references :subscription_frequency
    end
  end
end
