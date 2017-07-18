Rails.application.routes.draw do

  resources :events

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  devise_for :users, :controllers => { :sessions => "users/sessions" }

  resources :hostings do
  	resources :comments, except: [:index, :show]
  	collection do
  		get 'search'
  	end
  end
  
  root 'hostings#index'

  match '/how_it_works', to: 'pages#how_it_works', via: :get
  match '/about_us', 	 to: 'pages#about_us', 	   via: :get

end
