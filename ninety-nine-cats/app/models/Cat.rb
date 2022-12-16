require "date"

class Cat < ApplicationRecord
    CAT_COLOR = ["red", "green", "blue", "yellow"]

    validates :birth_date, presence: true 
    validates :color, inclusion: { in: CAT_COLOR }
    validates :sex, inclusion: { in: ["M", "F"] }

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date < Date.today
            error.add(:birth_date, "Can't be added")
        end 
    end

end