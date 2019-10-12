class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :traveller_id
      t.integer :place_id
      t.boolean :checked_out, default: false
      t.timestamps
    end
  end
end
