Rails.application.routes.draw do
  resources :videos
  root 'videos#index'
  get 'videos/:id/:subs' => 'videos#show'
  get 'sessions' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
