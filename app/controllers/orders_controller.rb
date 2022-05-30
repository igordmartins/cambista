class OrdersController < ApplicationController
  def new
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new(order_params)
    @order.ticket = @ticket
    @order.user = current_user
    if @order.save
      redirect_to root_path, notice: 'Ticket adiquirido com sucesso!'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:credcard, :user_id)
  end
end
