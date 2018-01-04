class AddAttachmentImageToPrograms < ActiveRecord::Migration[5.2]
  def self.up
    change_table :programs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :programs, :image
  end
end
