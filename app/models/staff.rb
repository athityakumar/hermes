class Staff < ApplicationRecord
  has_secure_password
	belongs_to :place, optional: true

  def active_groups
  	GroupMembership.where(user_class: "Staff", user_id: self.id)
  end

  def can_check_into_place?(place)
  	false
  end
end
