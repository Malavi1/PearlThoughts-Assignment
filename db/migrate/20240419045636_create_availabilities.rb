class CreateAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.integer :remaining_slots
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
