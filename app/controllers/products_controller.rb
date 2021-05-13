class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
      inventory: params[:inventory]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 	:unprocessable_entity
    end
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end
  
  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.image_url = params[:image_url] || product.image_url
    product.inventory = params[:inventory] || product.inventory
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 	:unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed"}
  end
end
