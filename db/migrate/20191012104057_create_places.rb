class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :map_url
      t.string :map_iframe
      t.string :contact_number
      t.decimal :average_rating, precision: 3, scale: 2, default: 0.00
      t.integer :number_of_ratings, default: 0
      t.timestamps
    end
  end
end
