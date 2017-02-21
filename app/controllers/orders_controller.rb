class OrdersController < ApplicationController
	skip_before_action :require_login, only: [:new,:create]

  def index
    @orders = Order.all
    @order_details = Order.all.map do |order|
        'Purchaser: ' + order.name + ' Email: ' + order.email + ' Date Purchased: ' + order.created_at.strftime("Ordered on %m/%d/%Y") + order.created_at.strftime("at %I:%M%p")  + ' Show: ' + order.showtime.show.title
    end
  end

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
