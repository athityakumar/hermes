class Place < ApplicationRecord
	has_many :staffs
	has_many :visits
	belongs_to :group, optional: true
end
