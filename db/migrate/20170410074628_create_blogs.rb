class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.text :content, null: false
      t.integer :user_id, null:false
      t.timestamps
    end
    add_foreign_key :blogs, :users
  end
end
