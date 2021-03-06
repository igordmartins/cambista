class OrdersController < ApplicationController
  def index
    @orders = policy_scope(Order).order(created_at: :desc)
    @orders = Order.where(user: current_user)
    authorize @orders
  end

  def new
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new
    authorize @order
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new(order_params)
    authorize @order
    @order.ticket = @ticket
    @order.user = current_user
    if @order.save
      @ticket.update(available: false)
      redirect_to root_path, notice: 'Ticket adquirido com sucesso!'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:credcard, :user_id)
  end
end
