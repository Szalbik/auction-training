require 'rails_helper'

RSpec.describe Buyer, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:bids) }
    it { is_expected.to belong_to(:account) }
  end
end
