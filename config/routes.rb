Rails.application.routes.draw do

  devise_for :users
	root 'visitors#index'

  resources :students do
    get :subjects
  end


	resources :payments do
		
	end


	resources :teachers do
		get :subjects
	end

	get '/report/subjects', to: 'reports#subjects'

end
