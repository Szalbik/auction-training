class RenameProductsAccountIdToSellerId < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :account_id
  end
end
