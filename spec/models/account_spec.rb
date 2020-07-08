require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'validations' do
    it { validate_presence_of(:email) }
  end

  describe 'associations' do
    it { is_expected.to have_one(:buyer) }
    it { is_expected.to have_one(:seller) }
  end
end
