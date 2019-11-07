Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :ingredients do
    resources :doses
  end
  resources :doses do
    resources :ingredients, :cocktails
  end
  resources :cocktails do
    resources :doses
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Nested resources :
  #  do
  #   resources :ingredients, :cocktails
  # end
