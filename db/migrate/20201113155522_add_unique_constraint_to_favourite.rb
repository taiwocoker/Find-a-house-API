class AddUniqueConstraintToFavourite < ActiveRecord::Migration[6.0]
  def change
    add_index :favourites, %i[user_id house_id], unique: true
  end
end
