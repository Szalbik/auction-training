class Organization < ApplicationRecord
  has_many :groups
  has_many :user_auctions
end
