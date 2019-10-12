class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :user_class, default: "Traveller"
      t.integer :user_id
      t.integer :group_id
      t.text :description
      t.timestamps
    end
  end
end
