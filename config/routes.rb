Rails.application.routes.draw do
  resources :pic_gals
  root 'application#index'
  # root 'pic_gals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
