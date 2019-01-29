Rails.application.routes.draw do
  resources :comments
  devise_for :users

  as :user do
    get "sign-in" => "devise/sessions#new"
    post "sign-in" => "devise/sessions#create"
    delete "sign-out" => "devise/sessions#destroy"
    get "sign-up" => "devise/registrations#new"
    post "sign-up" => "devise/registrations#create"
   
  end

  resources :posts

  root to: 'welcome#index'
# For details on the DSL available within this file,
# see http : //guides.rubyonrails.org/routing.html
end
