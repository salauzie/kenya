class AddAttachmentVideoToClassvideos < ActiveRecord::Migration
  def self.up
    change_table :classvideos do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :classvideos, :video
  end
end
