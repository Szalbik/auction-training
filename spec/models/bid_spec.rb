require 'rails_helper'

RSpec.describe Bid, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to(:user_auction) }
    it { is_expected.to belong_to(:buyer) }
  end
end
