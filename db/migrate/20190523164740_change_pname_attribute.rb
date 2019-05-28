class ChangePnameAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :pname, :name
  end
end
