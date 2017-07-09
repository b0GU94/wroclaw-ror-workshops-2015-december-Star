Rails.application.routes.draw do

	root 'visitors#index'

  resources :students do
    get :subjects
  end

	resources :teachers do
		get :subjects
	end

	get '/report/subjects', to: 'reports#subjects'

end
