class AddAuthorToProgram < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :author, :string
  end
end
