# frozen_string_literal: true

class UserAuction < ApplicationRecord
  belongs_to :account
  has_one :product, through: :bids
  has_many :bids, class_name: 'Bid', foreign_key: 'account_id'
end
