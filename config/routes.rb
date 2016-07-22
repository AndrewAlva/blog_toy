Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'statics#index'

  get '/blog' => 'posts#index'

  get '/about' => 'statics#about'
  get '/contact' => 'statics#contact'

end
