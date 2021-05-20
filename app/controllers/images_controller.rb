class ImagesController < ApplicationController

  def index
    images = Image.all
    render json: images.as_json
  end

  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )
    image.save
    render json: image.as_json
  end

  def show
    image = Image.find(params[:id])
    render json: image.as_json
  end

  def update
    image = Image.find(params[:id])
    image.url = params[:url] || image.url
    image.product_id = params[:product_id] || image.product_id
    image.save
    render json: image.as_json
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: {message: "Image successfully removed"}
  end

end
