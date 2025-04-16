class RollbackArrayRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :ratings, :integer, default: nil
  end
end
