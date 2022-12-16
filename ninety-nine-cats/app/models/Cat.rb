require "date"

class Cat < ApplicationRecord
    CAT_COLOR = ["red", "green", "blue", "yellow"]

    validate :birth_date_cannot_be_future
    validates :color, inclusion: { in: CAT_COLOR }
    validates :sex, inclusion: { in: ["M", "F"] }
    validates :name, presence: true

    def birth_date_cannot_be_future
        if birth_date > Date.today
            errors.add(:birth_date, "Can't be added")
        end 
    end

end