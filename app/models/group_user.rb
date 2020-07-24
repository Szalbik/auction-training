class GroupUser < ApplicationRecord
  belongs_to :seller
  belongs_to :group
end
