class Patient
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.patient == self
    end
  end

end
