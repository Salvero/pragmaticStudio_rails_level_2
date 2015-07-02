Rails.application.routes.draw do
  
	get 'signup' => 'users#new'	  
  get 'signin' => 'sessions#new'

  resource :users, :session
	root 'movies#index'

	resources :movies do
		resources :reviews
	end

end
