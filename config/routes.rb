Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :lessonplans
  resources :services
  resources :lessons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
