Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :travellers do
  	scope "/:travellers_id" do
	  	get '/', action: 'show'
	 end
  end

  namespace :places do
    get '/', action: 'show_all'

  	scope "/:place_id" do
      get '/', action: 'show'
      get '/check_in', action: 'check_in'
      get '/check_out', action: 'check_out'

  		namespace :staffs do
        get '/', action: 'show'
  		end
  	end
  end

  namespace :groups do
  	scope "/:group_id" do
  		namespace :posts do
        post '/', action: 'new'
        get '/', action: 'show'

  			scope "/:post_id" do
          get '/', action: 'show_comments'
          post '/', action: 'new_comment'
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
  get '/sign_out', to: 'session#sign_out'
  get '/staff_sign_in', to: 'session#staff_sign_in'
  post '/staff_sign_in', to: 'session#staff_sign_in'
end
