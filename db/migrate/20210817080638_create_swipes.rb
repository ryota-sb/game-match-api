class CreateSwipes < ActiveRecord::Migration[5.2]
  def change
    create_table :swipes do |t|
      t.integer :to_user_id, null: false
      t.integer :from_user_id, null: false
      t.boolean :is_like

      t.timestamps
    end
  end
end
