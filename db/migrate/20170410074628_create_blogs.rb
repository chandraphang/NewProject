class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false, :limit => 50
      t.string :summary, null: false, :limit => 150
      t.text :content, null: false
      t.integer :user_id, null:false
      t.string  :title_image_url, null: false, :limit => 150
      t.timestamps
    end
    add_foreign_key :blogs, :users
  end
end
