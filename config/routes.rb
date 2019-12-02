Rails.application.routes.draw do
  root 'homes#index'
  get "/pages/:page" => "pages#show"
  

  resources :homes 
  resources :contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
