class Group < ApplicationRecord
  belongs_to :organization
  has_many :products
end
