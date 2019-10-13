class TravellersController < ApplicationController
	before_action :find_traveller

	def show
		@places = Place.all
	end
end
