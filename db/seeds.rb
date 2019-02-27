
10.times do
  physician = Physician.create(
    name: Faker::Movies::Lebowski.character
  )
 
  5.times do 
    patient = Patient.create(
      name: Faker::Movies::LordOfTheRings.character

    )

    Appointment.create(
      date: Faker::Date.forward(100),
      time: Faker::Time.forward(100, :morning),
      physician_id: physician.id,
      patient_id: patient.id
    )
  end
end

puts "Data Seeded."