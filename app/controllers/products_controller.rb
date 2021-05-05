class ProductsController < ApplicationController
  #Displays all products on the page
  def all_products
    products = Product.all
    render json: products.as_json
  end

  #Individual method for each product
  def monstera_plant
    product = Product.find_by(name: "Monstera Plant")
    render json: product.as_json
  end

  def fidget_spinner
    product = Product.find_by(name: "Fidget Spinner")
    render json: product.as_json
  end

  #The process of adding routes for each thing is so inconvenient! if we had a much larger shop, it would be nearly impossible!
end
