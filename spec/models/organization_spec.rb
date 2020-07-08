require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'validations' do
    it { is_expected.to have_many(:user_auctions) }
    it { is_expected.to have_many(:groups) }
  end
end
