puts "Clearing all the restaurants"
Restaurant.destroy_all
puts "Creating the restaurants"

15.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  )
end
puts "created 15 restaurants"
