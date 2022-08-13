Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bagels" => "bagels#index"
  post "/bagels" => "bagels#create"
  get "/bagels/:id" => "bagels#show"
  patch "/bagels/:id" => "bagels#update"
  delete "/bagels/:id" => "bagels#destroy"
end
