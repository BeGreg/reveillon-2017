class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.text :name
      t.integer :number
      t.boolean :participate
      t.boolean :sleepover

      t.timestamps
    end
  end
end
