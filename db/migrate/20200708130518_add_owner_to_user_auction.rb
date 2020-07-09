class AddOwnerToUserAuction < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_auctions, :owner, polymorphic: true, null: false
  end
end
