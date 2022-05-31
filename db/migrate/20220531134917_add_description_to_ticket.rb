class AddDescriptionToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :description, :text
  end
end
