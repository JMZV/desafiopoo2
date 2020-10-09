#clase padre Appointment, es decir superclase
class Appointment
    def initialize(location,purpose,hour,min)
        @location = location.to_s
        @purpose = purpose.to_s
        @hour = hour.to_i
        @min = min.to_i
    end
    def location()
        @location
    end
    def purpose()
        @purpose
    end
    def hour()
        @hour
    end
    def min()
        @min
    end
end

#clase hijo MonthlyAppointment, es decir, subclase de Appointment
class MonthlyAppointment < Appointment
    def initialize(location,purpose,hour,min,day)
        super(location,purpose,hour,min)
        @day = day.to_i
    end
    def day()
        @day
    end
    def ocurrs_on?(day)
        if self.day == day
            true
        else
            false
        end
    end
    def to_s
        'Reunión mensual en ' +self.location+' sobre '  +self.purpose +
        ' el día ' + "#{self.day}" + ' a las ' + "#{self.hour}:#{self.min}."
    end
end

#clase hijo DailyAppointment, es decir, subclase de Appointment
class DailyAppointment < Appointment
    def initialize(location,purpose,hour,min)
        super
    end  
    def ocurrs_on?(hour,min)
        if self.hour == hour && self.min == min
            true
        else
            false
        end
    end
    def to_s
        'Reunión diaria en ' +self.location+' sobre '  +self.purpose +
         + ' a las ' + "#{self.hour}:#{self.min}."
    end
end

#clase hijo OneTimeAppointment, es decir, subclase de Appointment
class OneTimeAppointment < Appointment
    def initialize(location,purpose,hour,min,day,month,year)
        super(location,purpose,hour,min)
        @day = day.to_i
        @month = month.to_i
        @year = year.to_i
    end
    def day()
        @day
    end
    def month()
        @month
    end
    def year()
        @year
    end
    def ocurrs_on?(day,month,year)
        if self.day == day && self.month == month && self.year == year
            true
        else
            false
        end
    end
    def to_s
        'Reunión única en ' +self.location+' sobre '  +self.purpose +
        ' el ' + "#{self.day}/#{self.month}/#{self.year}" + ' a las ' + "#{self.hour}:#{self.min}."
    end
end

#ap = OneTimeAppointment.new('Copiapo','ayudantía',19,0,25,12,2020)
#puts ap.location
#puts ap.purpose
#puts ap.hour
#puts ap.min
#puts ap.hour
#puts ap.ocurrs_on?(25,11,2020)
#puts ap