class OrganizationUser < ApplicationRecord
  belongs_to :seller
  belongs_to :organization
end
