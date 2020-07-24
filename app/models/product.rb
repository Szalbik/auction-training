class Product < ApplicationRecord
  has_many :user_auctions
  has_many :product_roles
  belongs_to :seller
  belongs_to :group, optional: true
  belongs_to :organization, optional: true

  validate :there_cannot_be_open_auction, on: :update

  def there_cannot_be_open_auction
    if user_auctions.any? {|a| a.finished_at > Time.zone.now}
      errors.add(:existing_auctions, "can't have open auction!")
    end
  end
end
