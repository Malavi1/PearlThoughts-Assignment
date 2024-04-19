class Doctor < ApplicationRecord
    has_many :appointments
    has_many :availabilities

    def available_on(date)
        availabilities.where(date: date).first
    end
end
