class RemoveAccountFromBids < ActiveRecord::Migration[6.0]
  def change
    remove_column :bids, :account_id
  end
end
