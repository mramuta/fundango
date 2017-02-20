class OrdersController < ApplicationController
	skip_before_action :require_login, only: [:new,:create]

  def new
    @show = Show.find(params[:show_id])
    @order = Order.new
  end

  def create
    @show = Show.find(params[:show_id])
    @order = Order.new(order_params)
    if @order.save
      UserMailer.confirm(@order).deliver_later
      redirect_to root_path 
    else
      @errors = @order.errors.full_messages
      render "new"
    end
  end

  private

  def order_params
    params.require(:order).permit(:name,:email,:showtime_id)
  end
end
