class AddAttachmentImageToClassvideos < ActiveRecord::Migration
  def self.up
    change_table :classvideos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :classvideos, :image
  end
end
