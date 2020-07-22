class ProductRole < ApplicationRecord
  has_many :products
  belongs_to :product_role_assignment

  validates :name, presence: true, uniqueness: true
end
