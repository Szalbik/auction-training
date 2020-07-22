class AddSellerToGroupAndOrganization < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :seller, null: false, foreign_key: true
    add_reference :groups, :seller, null: false, foreign_key: true
  end
end
