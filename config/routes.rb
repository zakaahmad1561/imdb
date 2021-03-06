Rails.application.routes.draw do
  resources :movies do
    collection do
      delete 'destroy_multiple'
    end
    resources :reviews
  end
  devise_for :users, 
  controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
  resources :after_signup
end
