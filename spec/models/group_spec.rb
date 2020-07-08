require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validations' do
    it { is_expected.to belong_to(:organization) }
    it { is_expected.to have_many(:products) }
  end
end
