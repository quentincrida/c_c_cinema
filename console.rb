require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')


require('pry-byebug')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()


customer1 = Customer.new({ 'name' => 'Quentin Crida', 'funds' => 50})
customer1.save()
customer2 = Customer.new({'name' => 'Este Visser', 'funds' => 60})
customer2.save()

film1 = Film.new({ 'title' => 'Millers Crossing', 'price' => 10})
film1.save()
film2 = Film.new({ 'title' => 'Fargo', 'price' => 9})
film2.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id'=> film1.id})
ticket1.save
ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save


binding.pry
nil
