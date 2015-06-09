Rails.application.routes.draw do
  get "/" => "products#index"
  get "/products" => "products#index"
  get "/products/new" => 'products#new'
  post "/products" => 'products#create'
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"
  get "/products/:id/new_image" => 'products#new_image'
  post "/products/:id" => 'products#create_image'
end
