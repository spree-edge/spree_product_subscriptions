class AddColumnsToSpreeSubscriptions < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_subscriptions, :number, :string
    add_column :spree_subscriptions, :cancellation_reasons, :text
  end
end
