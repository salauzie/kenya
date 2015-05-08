class CreateClassvideos < ActiveRecord::Migration
  def change
    create_table :classvideos do |t|

      t.timestamps null: false
    end
  end
end
