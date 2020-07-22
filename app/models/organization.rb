class Organization < ApplicationRecord
  has_many :groups
  has_many :products, through: :groups
  has_many :user_auctions, as: :owner
  has_many :product_role_assignments
  has_many :product_roles, through: :product_role_assignments

  def role?(role)
    product_roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
