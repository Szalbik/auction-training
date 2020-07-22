require 'rails_helper'

RSpec.describe GroupUser, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:group) }
    it { is_expected.to belong_to(:seller) }
  end
end
