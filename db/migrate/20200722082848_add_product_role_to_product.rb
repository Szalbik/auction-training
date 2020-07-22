class AddProductRoleToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :product_role, null: false, foreign_key: true
  end
end
