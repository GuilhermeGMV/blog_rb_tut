class AddRatingToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :ratings, :float, array: true, default: []
  end
end
