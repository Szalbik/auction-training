class AddBuyerReferenceToBid < ActiveRecord::Migration[6.0]
  def change
    add_reference :bids, :buyer, null: false, foreign_key: true
  end
end
