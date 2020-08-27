Rails.application.routes.draw do
  post "dogs/sort_dogs", to: "dogs#sort_dogs", as: "sort_dogs"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end