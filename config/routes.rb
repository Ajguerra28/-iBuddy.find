Rails.application.routes.draw do
  devise_for :users

  resources :events, except: :destroy do
    collection do
      get :my_events
    end
    resources :bookings, only: %i[new create show edit]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
