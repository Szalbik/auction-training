class Group < ApplicationRecord
  belongs_to :organization
  has_many :products
  has_many :user_auctions, as: :owner
end
