class Bid < ApplicationRecord
  belongs_to :account
  belongs_to :user_auction

  validates :amount, presence: true
end
