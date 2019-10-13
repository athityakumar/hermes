class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token
	
	def find_traveller_or_staff
		if session[:traveller_id] or session[:staff_id]
			if session[:traveller_id]
				@current_traveller = Traveller.find(session[:traveller_id])
			else
				@current_staff = Staff.find(session[:staff_id])
			end
		else
			redirect_to '/sign_up' and return
		end
	end

	def find_traveller
		if session[:traveller_id]
			@current_traveller = Traveller.find(session[:traveller_id])
		else
			@current_traveller = nil
			redirect_to '/sign_up' and return
		end
	end

	def find_staff
		if session[:staff_id]
			@current_staff = Staff.find(session[:staff_id])
		else
			@current_traveller = nil
			redirect_to '/staff_sign_in' and return
		end		
	end

	def find_group
		@group = Group.find(params[:group_id])
	end

	def find_post
		@post = Post.find(params[:post_id])
	end

	def find_place
		@place = Place.find(params[:place_id])
	end
end
