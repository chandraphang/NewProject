class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
        t.string :username, null: false, :limit => 50
        t.integer :blog_id, null: false
        t.string :comment_text, null: false, :limit => 300
        t.timestamps
    end
    add_foreign_key :comments, :blogs
  end
end