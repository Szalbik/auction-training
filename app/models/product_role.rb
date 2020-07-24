class ProductRole < ApplicationRecord
  belongs_to :product
  belongs_to :product_role_assignment

  validates :name, presence: true, uniqueness: true
end
