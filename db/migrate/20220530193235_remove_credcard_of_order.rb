class RemoveCredcardOfOrder < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :credcard, :string
  end
end
