class Traveller < ApplicationRecord
  has_secure_password
  has_many :visits
  has_many :group_memberships
  has_many :posts

  def active_groups
  	group_ids = GroupMembership.where(user_class: "Traveller", user_id: self.id).map(&:group_id)
  	Group.where(id: group_ids)
  end

  def can_check_into_place?(place)
  	mapping = GroupMembership.where(user_class: "Traveller", user_id: self.id, group_id: place.group.id)
  	mapping.empty?
  end
end
