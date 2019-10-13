class Post < ApplicationRecord
	has_many :comments
	belongs_to :group

	def user
		user_klass = self.user_class == "Traveller" ? Traveller : Staff
		user_klass.find(self.user_id)
	end
end
