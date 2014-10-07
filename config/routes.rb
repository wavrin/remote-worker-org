Remoteworker::Application.routes.draw do
  resources :users

  resources :articles

  resource :session
  
  root "pages#index"


  get "advocacy" => "pages#advocacy"
  get "employment" => "pages#employment"
  get "about" => "pages#about"
  get "loginhere" => "sessions#new"
end
