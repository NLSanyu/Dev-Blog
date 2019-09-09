class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.boolean :published, :default => false
      t.datetime :published_on, :required => false
      t.integer :likes, :default => 0
      t.timestamps null: false
    end
  end
end
