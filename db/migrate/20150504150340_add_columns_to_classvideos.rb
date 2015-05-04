class AddColumnsToClassvideos < ActiveRecord::Migration
  def change
  	add_column :classvideos, :post, :string
  end
end
