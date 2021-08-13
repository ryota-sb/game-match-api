class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :discord_id
      t.text :message

      t.timestamps
    end
  end
end
