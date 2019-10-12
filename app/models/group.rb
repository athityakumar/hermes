class Group < ApplicationRecord
	has_many :posts
	has_many :group_memberships
end
