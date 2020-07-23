class Product < ApplicationRecord
  has_many :user_auctions
  has_many :product_roles
  belongs_to :seller
  belongs_to :group, optional: true
  belongs_to :organization, optional: true
end
