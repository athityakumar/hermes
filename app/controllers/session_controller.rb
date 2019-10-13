class SessionController < ApplicationController
	def home
		if session[:traveller_id]
			redirect_to '/groups/1/posts' and return
		else
			redirect_to '/sign_up'
		end
	end

	def sign_up
		unless request.get?
			Traveller.create(traveller_params)
			puts(params[:email])
		end
	end

	def sign_in
		unless request.get?
			@traveller = Traveller.find_by_email(params[:email])
			if @traveller.authenticate(params[:password])
				puts "Signed in successfully #{@traveller.id}"
				session[:traveller_id] = @traveller.id
				redirect_to '/groups/1/posts'
			end
		end
	end

	def staff_sign_in
		unless request.get?
			@staff = Staff.find_by_email(params[:email])
			if @staff.authenticate(params[:password])
				puts "Signed in successfully"
				session[:staff_id] = @staff.id
				redirect_to "/places/#{@staff.place.id}/"
			end
		end
	end

	def sign_out
		session[:traveller_id] = nil
		redirect_to '/sign_in' and return
	end

	def staff_sign_out
		session[:staff_id] = nil
		redirect_to '/staff_sign_in' and return
	end

	private

	def traveller_params
		params.permit(:name, :email, :password)
	end
end
