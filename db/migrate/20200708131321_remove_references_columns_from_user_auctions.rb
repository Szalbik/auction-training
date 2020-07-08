class RemoveReferencesColumnsFromUserAuctions < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_auctions, :account_id
    remove_column :user_auctions, :seller_id
    remove_column :user_auctions, :product_id
  end
end
