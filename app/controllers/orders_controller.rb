class OrdersController < ApplicationController
	skip_before_action :require_login, only: [:new,:create]

  def new
    @order = Order.new
  end

  def create
    if @order.save
      redirect_to root_path 
    else
      @errors = @order.errors.full_messages
      render "new"
    end
  end
end
