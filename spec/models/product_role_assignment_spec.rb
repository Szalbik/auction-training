require 'rails_helper'

RSpec.describe ProductRoleAssignment, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:product_roles) }
    it { is_expected.to have_many(:products).through(:product_roles) }
    it { is_expected.to belong_to(:organization) }
    it { is_expected.to belong_to(:group) }
    it { is_expected.to belong_to(:seller) }
  end
end
