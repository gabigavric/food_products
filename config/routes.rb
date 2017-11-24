Rails.application.routes.draw do
  root :to => 'landing_page#index'
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
