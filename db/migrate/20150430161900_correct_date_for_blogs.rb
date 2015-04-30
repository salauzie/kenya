class CorrectDateForBlogs < ActiveRecord::Migration
  def change
  	add_column :blogs, :date, :date
  end
end
