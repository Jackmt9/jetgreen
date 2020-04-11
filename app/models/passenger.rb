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
end
