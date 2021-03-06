Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :codes, except: [:create, :delete]

  # most important file
  # entry point for all the requests in the app

  # Inventing the CRUD Routing

  # read all codes
  #get "codes", to: "code#index"

  # read one code
  #get "codes/:id", to: "codes#show"

  # create one code
  # get "codes/new", to: "codes#new"
  # post "codes", to: "codes#create"

  # update one code
  #get "codes/:id/edit", to: "codes#edit"
  #patch "codes/:id", to: "code#update"

  # delete one code
  # get "codes/:id", to: "codes#destroy"
end
