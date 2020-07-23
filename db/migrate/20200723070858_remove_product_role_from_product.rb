class RemoveProductRoleFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :product_role
  end
end
