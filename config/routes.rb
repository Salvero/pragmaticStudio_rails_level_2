Rails.application.routes.draw do
  
  get 'sessions/new'

  resource :users, :session
	root 'movies#index'

	get 'signup' => 'users#new'

	resources :movies do
		resources :reviews
	end

end
