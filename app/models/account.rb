class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, class_name: "Product", foreign_key: "account_id"
  has_many :user_auctions, class_name: "UserAuction", foreign_key: "account_id"
  has_many :bids, class_name: 'Bid', foreign_key: 'account_id'
end
