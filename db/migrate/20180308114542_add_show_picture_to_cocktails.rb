class AddShowPictureToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :show_picture, :string
  end
end
