class TicketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @tickets = policy_scope(Ticket).order(created_at: :desc)
    authorize @tickets
  end

  def new
    @ticket = Ticket.new
    authorize @ticket
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user

    authorize @ticket

    if @ticket.save
      redirect_to tickets_path(@ticket)
    else
      render :new
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path(@ticket)
  end

  def show
    @ticket = Ticket.find(params[:id])
    authorize @ticket
  end

  private

  def ticket_params
    params.require(:ticket).permit(:event_price, :event_name, :event_date, :user_id, :photo, :description)
  end
end
