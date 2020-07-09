class Product < ApplicationRecord
  has_many :user_auctions
  belongs_to :seller
  belongs_to :group, optional: true
end
