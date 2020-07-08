require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:seller) }
    it { is_expected.to belong_to(:group) }
  end
end
