class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, :limit => 45
      t.string :email, null: false, :limit => 45
      t.string :password_digest, null: false
    end
  end

end
