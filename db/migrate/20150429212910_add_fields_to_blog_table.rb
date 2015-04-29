class AddFieldsToBlogTable < ActiveRecord::Migration
  def change
  	add_column :blogs, :title, :string
  	add_column :blogs, :post, :text
  	add_column :blogs, :date, :integer
  end
end
