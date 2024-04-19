class Appointment < ApplicationRecord
  belongs_to :doctor
  validates_presence_of :date, :time, :patient_name
end
