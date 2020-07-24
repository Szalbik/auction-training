class Group < ApplicationRecord
  belongs_to :organization
  has_many :products
  has_many :user_auctions, as: :owner
  has_many :product_role_assignments
  has_many :product_roles, through: :product_role_assignments
  has_many :group_users
  has_many :sellers, through: :group_users

  def role?(role)
    product_roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
