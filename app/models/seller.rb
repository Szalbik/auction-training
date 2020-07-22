class Seller < ApplicationRecord
  belongs_to :account
  has_many :products
  has_many :user_auctions, as: :owner
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :organization_users
  has_many :organizations, through: :organization_users
  has_many :product_role_assignments
  has_many :product_roles, through: :product_role_assignments

  def role?(role)
    product_roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
