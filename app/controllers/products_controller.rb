class ProductsController < ApplicationController
  def index
    products = Product.all
    if params[:search_term]
      products = products.where("name iLIKE ?", "%#{params[:search_term]}%")
    end
    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        products = products.order(price: :desc)
      else
        products = products.order(:price)
      end
    else
      products = products.order(:id)
    end
    if params[:discount] == "true"
      products = products.where("price < 10")
    end

    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
    )
    if product.save
      image = Image.new(
        url: params[:url],
        product_id: product.id
      )
      if image.save
        render json: product
      else
        render json: {errors: image.errors.full_messages}, status: 	:unprocessable_entity
      end
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
