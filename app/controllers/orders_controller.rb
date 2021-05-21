class OrdersController < ApplicationController
  def index
    if current_user
      orders = current_user.orders
      render json: orders
    else
      render json: {errors: "You must be logged in to view orders"}, status: :unauthorized
    end
  end
  
  def create
    if current_user
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity]
      )

      order.subtotal = order.quantity * order.product.price
      order.tax = order.subtotal * 0.09
      order.total = order.tax + order.subtotal

      if order.save
        render json: order
      else
        render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {errors: "You must be logged in to make an order."}, status: :unauthorized
    end
  end

  def show
    if current_user
      order = current_user.orders.find(params[:id])
      render json: order
    else
      render json: {error: "You do not have permission to see this order."}, status: :unauthorized
    end
  end
end
