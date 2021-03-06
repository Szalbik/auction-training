require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:user_auctions) }
    it { is_expected.to have_many(:groups) }
    it { is_expected.to have_many(:products).through(:groups) }
  end
end
