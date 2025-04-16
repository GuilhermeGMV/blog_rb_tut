class ChangeRatingsToBeArrayInArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :ratings, :float
    add_column :articles, :ratings, :integer, array: true, default: []
  end
end
