class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :user_class, default: "Traveller"
      t.integer :user_id
      t.integer :post_id
      t.text :description
      t.timestamps
    end
  end
end
