require 'rails_helper'

RSpec.describe ProductRole, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:products) }
    it { is_expected.to belong_to(:product_role_assignment) }
  end
end
