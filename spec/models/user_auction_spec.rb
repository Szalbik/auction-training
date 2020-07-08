require 'rails_helper'

RSpec.describe UserAuction, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to(:organization). }
  end
end
