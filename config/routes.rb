Rails.application.routes.draw do
  resources :zoos do
    resources :animals
  end
end
