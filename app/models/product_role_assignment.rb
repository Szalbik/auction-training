class ProductRoleAssignment < ApplicationRecord
  has_many :product_roles
  has_many :products, through: :product_roles
  belongs_to :organization
  belongs_to :group
  belongs_to :seller
end
