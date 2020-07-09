# frozen_string_literal: true

class UserAuction < ApplicationRecord
  belongs_to :owner, polymorphic: true
  belongs_to :product
  has_many :bids
end
