class AddFieldsToFilm < ActiveRecord::Migration
  def change
    add_column :films, :title, :string
  end
end
