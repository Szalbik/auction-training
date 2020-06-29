class CreateUserAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_auctions do |t|
      t.datetime :finished_at
      t.string :name
      t.string :description
      t.decimal :minimal_price, :precision => 10, :scale => 2
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
