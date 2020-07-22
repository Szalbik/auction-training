require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:seller) }
    it { is_expected.to belong_to(:group).optional }
    it { is_expected.to belong_to(:product_role) }
    it { is_expected.to have_many(:user_auctions) }
  end
end
