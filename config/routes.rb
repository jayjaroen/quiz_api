Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "quiz_categories#index"
  resources :quiz_categories, only:[:index, :show]
  resources :quiz_items, only:[:index]
    # resources :quiz_items, only:[:index]
end
