class AddSellerIdToUserAuctions < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_auctions, :seller, null: false, foreign_key: true
  end
end
