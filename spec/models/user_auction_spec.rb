require 'rails_helper'

RSpec.describe UserAuction, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:owner) }
  end
end
