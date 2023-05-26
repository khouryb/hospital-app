# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

diagnosis = [
  'Hypertension',
  'Diabetes',
  'Asthma',
  'Arthritis',
  'Migraine',
  'Depression',
  'Anxiety',
  'Cancer',
  'Obesity',
  'Allergies',
  'Osteoporosis',
  'Bronchitis',
  'Gastritis',
  'Pneumonia',
  'Hepatitis',
  'Fibromyalgia',
  'Eczema',
  'Psoriasis',
  'Stroke',
  'Heart disease'
];

20.times do |i|
    Patient.create(
        first_name:
        Faker::Name.first_name,
        last_name:
        Faker::Name.last_name,
        diagnosis:diagnosis[i],
        born_on:
        Faker::Date.birthday(min_age: 16, max_age: 110)
    )
end