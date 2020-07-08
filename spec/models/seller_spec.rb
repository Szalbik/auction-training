require 'rails_helper'

RSpec.describe Seller, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to(:account) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:user_auctions) }
  end
end
