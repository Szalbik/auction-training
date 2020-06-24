class Bid < ApplicationRecord
  belongs_to :account
  belongs_to :user_auction
end
