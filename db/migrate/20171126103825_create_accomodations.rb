class CreateAccomodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accomodations do |t|
      t.text :name
      t.integer :nb_persons
      t.integer :participant_id
      t.text :comment
      t.references :participant, foreign_key: true

      t.timestamps
    end
  end
end
