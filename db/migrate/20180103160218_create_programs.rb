class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
