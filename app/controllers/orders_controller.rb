class OrdersController < ApplicationController

  def index
    products = Product.all
    byebug
    @products_purchase = products.where(stripe_plan_name:nil, paypal_plan_name:nil)
    @products_subscription = products - @products_purchase
    render({json: @products_subscription})
  end

  def submit
  end
end