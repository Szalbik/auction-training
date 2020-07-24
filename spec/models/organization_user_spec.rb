require 'rails_helper'

RSpec.describe OrganizationUser, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:organization) }
    it { is_expected.to belong_to(:seller) }
  end
end
