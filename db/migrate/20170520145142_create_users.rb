class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.string :name
      t.integer :role, default: 0
      t.integer :status, default: 0
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :username
  end
end
