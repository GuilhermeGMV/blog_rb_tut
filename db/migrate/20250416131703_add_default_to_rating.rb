class AddDefaultToRating < ActiveRecord::Migration[5.2]
  
  def change
    disable_foreign_keys
    change_column_default :articles, :rating, from: nil, to: 0.0
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
