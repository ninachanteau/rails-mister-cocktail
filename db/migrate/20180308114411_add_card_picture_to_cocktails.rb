class AddCardPictureToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :card_picture, :string
  end
end
