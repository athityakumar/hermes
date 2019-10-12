class CreateGroupMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :group_memberships do |t|
      t.string :user_class, default: "Traveller"
      t.integer :user_id
      t.integer :group_id
      t.timestamps
    end
  end
end
