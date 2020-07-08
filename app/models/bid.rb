class Bid < ApplicationRecord
  belongs_to :user_auction
  belongs_to :buyer

  validates :amount, presence: true
end
