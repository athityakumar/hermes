class SessionController < ApplicationController
	def home
		render 'sign_up.html'
	end

	def sign_up
		if request.get?
			render 'sign_up.html'
		else
			Traveller.create(traveller_params)
			puts(params[:email])
		end
	end

	def sign_in
		if request.get?
			render 'sign_in.html'
		else
			@traveller = Traveller.find_by_email(params[:email])
			if @traveller.authenticate(params[:password])
				puts "Signed in successfully"
			end
		end
	end

	private

	def traveller_params
		params.permit(:name, :email, :password)
	end
end
