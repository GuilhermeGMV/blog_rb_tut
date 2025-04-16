class ChangeRatingsToTextInArticles < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :ratings, :text, default: "--- []\n"
  end
end
