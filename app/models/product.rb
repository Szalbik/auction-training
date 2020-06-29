class Product < ApplicationRecord
  belongs_to :account
  has_many :user_auctions
end
