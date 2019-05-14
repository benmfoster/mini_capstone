class AddStockedBooleanToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :is_stocked, :boolean
  end
end
