PERSON_COUNT = 100
PERSON_COUNT.times do
  Person.create!(name: Faker::Name.name)
end
Rails.logger.info("Created #{PERSON_COUNT} People")
