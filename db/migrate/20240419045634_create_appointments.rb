class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :patient_name
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
