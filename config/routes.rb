Rails.application.routes.draw do
  resources :secret_menu_items do
    resources :customers
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
