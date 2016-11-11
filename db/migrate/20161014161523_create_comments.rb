class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :content
      t.string :name

      t.timestamps null: false
    end
    add_index :comments, :article_id
  end
end
