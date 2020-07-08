# frozen_string_literal: true

class UserAuction < ApplicationRecord
  belongs_to :owner, polymorphic: true
  has_many :bids
end
