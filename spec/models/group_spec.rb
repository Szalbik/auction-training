require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:organization) }
    it { is_expected.to have_many(:group_users) }
    it { is_expected.to have_many(:sellers).through(:group_users) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:user_auctions) }
  end
end
