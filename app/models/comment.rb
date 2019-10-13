class Comment < ApplicationRecord
	belongs_to :post

	def user
		user_klass = self.user_class == "Traveller" ? Traveller : Staff
		user_klass.find(self.user_id)
	end
end
