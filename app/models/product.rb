class Product < ApplicationRecord
  has_many :user_auctions
  belongs_to :seller
  belongs_to :group, optional: true
  belongs_to :organization, optional: true
  belongs_to :product_role
end
