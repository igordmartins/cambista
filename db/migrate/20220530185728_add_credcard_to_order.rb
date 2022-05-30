class AddCredcardToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :credcard, :integer
  end
end
