Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'static#index'

  #log in/out
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' # might have to change get to something else

  resources :users, only: [:new, :create] do
    resources :jobs, only: [:index, :new, :create, :filter]
  end

  resources :jobs, only: [:index, :new, :create, :show, :filter]

  resources :applicants, only: [:index, :create]
end
