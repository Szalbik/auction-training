class CreateProductRoleAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :product_role_assignments do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
