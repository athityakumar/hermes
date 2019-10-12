class Traveller < ApplicationRecord
  has_secure_password
  has_many :visits
  has_many :group_memberships
  has_many :posts
end
