Rails.application.routes.draw do
  resources :restaurants
  resources :restaurants do
    resources :menu_items
    resources :orders
  end

  post '/restaurant/:id/new_menu_item' => 'restaurants#new.menu'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
