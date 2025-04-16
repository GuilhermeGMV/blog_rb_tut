class RemoveRatingFromArticle < ActiveRecord::Migration[5.2]
  def change
    disable_foreign_keys
    remove_column :articles, :rating, :float
    enable_foreign_keys
  end

  def disable_foreign_keys
    drop_table :comments
  end

  def enable_foreign_keys
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
