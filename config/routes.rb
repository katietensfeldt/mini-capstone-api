Rails.application.routes.draw do
  get "/all_products" => "products#all_products"
  get "/monstera_plant" => "products#monstera_plant"
  get "/fidget_spinner" => "products#fidget_spinner"
end
