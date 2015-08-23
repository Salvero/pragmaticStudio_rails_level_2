Rails.application.routes.draw do
  resources :genres
  resource :session

	get 'signup' => 'users#new'	  
  get 'signin' => 'sessions#new'
  # get 'movies/filter/hits' => "movies#index", scope: "hits"
  # get 'movies/filter/flops' => "movies#index", scope: "flops"  

  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies

  resources :users

	root 'movies#index'

	resources :movies do
		resources :reviews
    resources :favorites    
	end

end
