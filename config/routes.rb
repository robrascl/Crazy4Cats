Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  get 'home/index'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'
  get '/my_reactions', to: 'reactions#product_with_reactions', as: 'my_reactions' 

  # Defines the root path route ("/")
  root "home#index"
end
