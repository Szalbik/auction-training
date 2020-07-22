class AddProductRoleAssignmentToProductRole < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_roles, :product_role_assignment, null: false, foreign_key: true
  end
end
