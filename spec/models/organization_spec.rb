require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:user_auctions) }
    it { is_expected.to have_many(:groups) }
    it { is_expected.to have_many(:products).through(:groups) }
    it { is_expected.to have_many(:organization_users) }
    it { is_expected.to have_many(:sellers).through(:organization_users) }
  end
end
