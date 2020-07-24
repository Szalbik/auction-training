class CreateOrganizationUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_users do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
    end
  end
end
