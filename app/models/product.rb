class Product < ApplicationRecord
  belongs_to :seller
  belongs_to :group
end
