class AddAvailableToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :available, :boolean, default: true
  end
end
