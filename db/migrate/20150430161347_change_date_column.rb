class ChangeDateColumn < ActiveRecord::Migration
  def change
  	remove_column :blogs, :date
  end
end
