class AddProductToUserAuction < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_auctions, :product, null: false, foreign_key: true
  end
end
