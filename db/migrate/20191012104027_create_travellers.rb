class CreateTravellers < ActiveRecord::Migration[5.2]
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :contact_number
      t.string :password_digest
      t.decimal :average_rating, precision: 3, scale: 2, default: 0.00
      t.integer :number_of_ratings, default: 0
      t.timestamps
    end
  end
end
