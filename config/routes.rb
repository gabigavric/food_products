Rails.application.routes.draw do
  root :to => 'products#index'
  resources :products do
    resources :reviews
    # might need :except => [:show, :index]
  end
end
