class Place < ApplicationRecord
	has_many :staffs
	has_many :visits
end
