class Seller < ApplicationRecord
  belongs_to :account
  has_many :products
  has_many :user_auctions
end
