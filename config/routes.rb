Rails.application.routes.draw do

  resources :memberships, only: [:create]

  resources :gyms, only: [:show, :destroy]

  resource :clients, only: [:show]

end
