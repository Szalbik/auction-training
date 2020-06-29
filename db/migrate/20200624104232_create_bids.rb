class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.decimal :amount, :precision => 10, :scale => 2
      t.references :account, null: false, foreign_key: true
      t.references :user_auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
