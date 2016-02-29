Rails.application.routes.draw do
  root to: 'zoos#index'
  resources :zoos do
    resources :animals
  end

  resources :species

  get '/change_language/:language', to: 'languages#change_language', as: :change_language
end
