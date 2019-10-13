class PlacesController < ApplicationController
	before_action :find_place, except: [:show_all]
	before_action :find_traveller_or_staff

	def show_all
		@places = Place.all
	end

	def show

	end

	def check_in
		GroupMembership.create(group: @place.group, user_id: @current_traveller.id)
		redirect_to "/places/#{@place.id}/"
	end

	def check_out
		GroupMembership.where(group: @place.group, user_id: @current_traveller.id, user_class: "Traveller").delete_all
		redirect_to "/places/#{@place.id}/"
	end
end
