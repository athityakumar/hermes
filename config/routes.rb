Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :travellers do
  	scope "/:travellers_id" do
	  	get '/', action: 'show'
	  	patch '/', action: 'update'
	 end
  end

  namespace :places do
  	scope "/:place_id" do
  		namespace :staffs do
  		end
  	end
  end

  namespace :groups do
  	scope "/:group_id" do
  		namespace :posts do
  			scope "/:post_id" do
  			end
  		end
  	end
  end

  # get '/travellers/:traveller_id', to: 'traveller#show'

  root 'session#home'
  get '/sign_up', to: 'session#sign_up'
  post '/sign_up', to: 'session#sign_up'
  get '/sign_in', to: 'session#sign_in'
  post '/sign_in', to: 'session#sign_in'
end
