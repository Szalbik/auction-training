require 'rails_helper'

RSpec.describe Seller, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:account) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:user_auctions) }
    it { is_expected.to have_many(:group_users) }
    it { is_expected.to have_many(:groups).through(:group_users) }
    it { is_expected.to have_many(:organization_users) }
    it { is_expected.to have_many(:organizations).through(:organization_users) }
  end
end
