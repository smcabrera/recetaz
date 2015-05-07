Rails.application.routes.draw do
  resources :recipes do
    resources :recipe_ingredients, only: [:update, :create, :destroy]
  end

  resources :ingredients

  devise_for :users

  # Using high_voltage gem for static pages
  root 'high_voltage/pages#show', id: 'home'

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

  resources :users, only: [:update]

end
