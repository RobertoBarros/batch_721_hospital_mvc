require_relative '../views/patients_view'
require_relative '../views/rooms_view'

class PatientsController
  def initialize(patient_repository, room_repository)
    @patient_repository = patient_repository
    @room_repository = room_repository
    @view = PatientsView.new
    @room_view = RoomsView.new
  end

  def create
    name = @view.ask_name
    age = @view.ask_age
    patient = Patient.new(name: name, age: age)

    rooms = @room_repository.all
    @room_view.list(rooms)
    index = @room_view.ask_index
    room = rooms[index]

    patient.room = room

    @patient_repository.add(patient)
  end

  def list
    patients = @patient_repository.all
    @view.list(patients)
  end
end