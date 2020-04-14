class Passenger < ApplicationRecord
    has_many :pfs
    has_many :flights, through: :pfs
    
    def name
        "#{self.last_name}, #{self.first_name}"
    end

    def prefix
        self.gender == "M" ? "Mr." : "Ms."
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
