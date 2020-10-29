class Doctor
    @@all = []

    attr_accessor :appointment, :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor==self}
    end

    def new_appointment(date,patient)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.collect {|appts| appts.patient}
    end

end