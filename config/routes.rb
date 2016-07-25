Rails.application.routes.draw do
  devise_for :users
  
  resources :users do 
    resources :posts
  end

  resources :comments do
    resources :comments
  end

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'statics#index'

  get '/blog' => 'posts#index'

  get '/about' => 'statics#about'
  get '/contact' => 'statics#contact'

  # get 'users/:id' => 'users#show', as: user

end