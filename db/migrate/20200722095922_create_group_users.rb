class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
    end
  end
end
