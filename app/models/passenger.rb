class Passenger < ApplicationRecord
    has_many :pfs
    has_many :flights, through: :pfs
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :dob, presence: true
    validates :phone, presence: true
    
    def name
        "#{self.last_name}, #{self.first_name}"
    end

    def prefix
        case self.gender
        when "M"
            "Mr."
        when "F"
            "Ms."
        when "Other"
            "Mx."
        end
    end

    def header_name
        "#{self.prefix} #{self.first_name} #{self.middle_name} #{self.last_name} #{self.suffix}"
    end

    def age
        birthday = self.dob
        y_old = Date.today.year - birthday.year
        y_old -= 1 if Date.today < birthday + y_old.years #for days before birthday
        return y_old
    end
end
