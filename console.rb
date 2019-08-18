require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
require_relative('models/screenings_table')

require('pry-byebug')

Screenings.delete_all
Ticket.delete_all
Customer.delete_all
Film.delete_all

customer1 = Customer.new({
  'name' => 'Ahmed',
  'funds' => 60
  })

customer2 = Customer.new({
  'name' => 'Menna',
  'funds' => 40
  })

customer1.save
customer2.save

customer1.name = 'Dodo'
customer1.update

film1 = Film.new({
  'title' => "Fast & Furious",
  'price' => 10
  })

film2 = Film.new({
  'title' => "Jumanji",
  'price' => 10
  })

film3 = Film.new({
  'title' => "Lucy",
  'price' => 10
  })

film1.save
film2.save
film3.save

film1.price = 8
film1.update

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })

ticket2 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id
  })

ticket3 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film2.id
  })

ticket1.save
ticket2.save
ticket3.save

screenings1 = Screenings.new({
  'film_id' => film1.id,
  'times' => '20:00'
  })

screenings2 = Screenings.new({
  'film_id' => film1.id,
  'times' => '20:00'
  })

screenings3 = Screenings.new({
  'film_id' => film2.id,
  'times' => '18:00'
  })

screenings1.save
screenings2.save
screenings3.save

binding.pry
nil
